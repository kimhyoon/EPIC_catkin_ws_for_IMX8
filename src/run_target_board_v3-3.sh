#!/bin/bash
export TZ='KST-9'

# EPIC Exploration Algorithm Runner for ARM Target Board
# This script sets up the environment and runs the core exploration algorithm
#
# Usage:
#   ./run_target_board_v3-3.sh [map_name] [run_sampler]
#
# Examples:
#   ./run_target_board_v3-3.sh garage true
#   ./run_target_board_v3-3.sh factory false

echo "   Starting EPIC Exploration Algorithm on ARM Target Board..."

# Fixed IPs()
TARGET_BOARD_IP="192.168.2.11"  # ROS Master
HOST_PC_IP="192.168.2.5"      # Simulator

# Get parameters from arguments
MAP_NAME=${1:-garage}
RUN_SAMPLER=${2:-true}         # Set to "true" to run trajectory sampler

# ========================================
# 🔧 TOPIC CONFIGURATION
# Fixed for SLAM(Odom, Cloud) integration
# ========================================
ODOM_TOPIC="/quad_0/lidar_slam/odom"
CLOUD_TOPIC="/quad0_pcl_render_node/cloud"

# Set absolute paths for target board
TARGET_WS="/home/root/catkin_ws"
EPIC_DIR="$TARGET_WS/src/EPIC/src/global_planner"
# Fixed config file path (no longer depends on MAP_NAME)
CONFIG_FILE="$EPIC_DIR/exploration_manager/config/target_board_garage_v2-3.yaml"
TSP_DIR="$EPIC_DIR/utils/lkh_tsp_solver/resource"

# ========================================
# LOGGING CONFIGURATION
# Per-run log files redirected from stdout/stderr (reduces terminal I/O overhead)
# ========================================
LOG_DIR="/home/root/epic_log"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
RUN_LOG_DIR="$LOG_DIR/run_$TIMESTAMP"

# Create log directory (each run gets its own subdirectory)
mkdir -p "$RUN_LOG_DIR"

# Per-node log file paths
EXPLORATION_LOG="$RUN_LOG_DIR/exploration_node.log"
TRAJ_SERVER_LOG="$RUN_LOG_DIR/traj_server.log"
FAST_PLANNER_LOG="$RUN_LOG_DIR/fast_planner_node.log"
SAMPLER_LOG="$RUN_LOG_DIR/trajectory_sampler.log"

echo "Log directory: $RUN_LOG_DIR"

# Debug TSP directory
echo "Checking TSP resource directory..."
echo "TSP_DIR: $TSP_DIR"
if [ -d "$TSP_DIR" ]; then
    echo "Directory exists"
    echo "Contents:"
    ls -la "$TSP_DIR"
else
    echo "Directory not found!"
    echo "Creating directory..."
    mkdir -p "$TSP_DIR"
fi

echo "Target Board IP (ROS Master): $TARGET_BOARD_IP"
echo "Config file: $CONFIG_FILE"
echo "Trajectory Sampler: $RUN_SAMPLER"
echo "Odometry Topic: $ODOM_TOPIC"
echo "Pointcloud Topic: $CLOUD_TOPIC"

# Set ROS Master URI to point to target board (local)
export ROS_MASTER_URI=http://$TARGET_BOARD_IP:11311
export ROS_IP=$TARGET_BOARD_IP
export ROS_HOSTNAME=$TARGET_BOARD_IP

echo "ROS_MASTER_URI: $ROS_MASTER_URI"
echo "ROS_IP: $ROS_IP"
echo "ROS_HOSTNAME: $ROS_HOSTNAME"

# Source ROS
echo "Sourcing ROS..."
source /opt/ros/noetic/setup.bash

# Set up environment for ARM binaries
export LD_LIBRARY_PATH=$TARGET_WS/devel/lib:$LD_LIBRARY_PATH
export PATH=$TARGET_WS/devel/lib/epic_planner:$TARGET_WS/devel/lib/plan_manage:$TARGET_WS/devel/lib/traj_utils:$PATH
export PYTHONPATH=$TARGET_WS/devel/lib/python3/dist-packages:$PYTHONPATH
export ROS_PACKAGE_PATH=$TARGET_WS/devel/share:$TARGET_WS/src:$ROS_PACKAGE_PATH

# Load ROS parameters
echo "Loading ROS parameters..."
rosparam load $CONFIG_FILE /exploration_node

# Set custom topic names
echo "Setting custom topic parameters..."
rosparam set /exploration_node/odometry_topic "$ODOM_TOPIC"
rosparam set /exploration_node/cloud_topic "$CLOUD_TOPIC"

echo "   - Odometry topic set to: $ODOM_TOPIC"
echo "   - Pointcloud topic set to: $CLOUD_TOPIC"

# Sync LiDAR parameters between rendering and exploration nodes
echo "Syncing LiDAR parameters..."

# Check if required LiDAR parameters exist
RENDER_NODE="/quad0_pcl_render_node"
REQUIRED_PARAMS=(
    "is_360lidar"
    "vertical_fov"
    "sensing_horizon"
    "lidar_pitch"
    "yaw_fov"
)

MISSING_PARAMS=()
for param in "${REQUIRED_PARAMS[@]}"; do
    if ! rosparam get $RENDER_NODE/$param > /dev/null 2>&1; then
        MISSING_PARAMS+=("$RENDER_NODE/$param")
    fi
done

# If parameters are missing, try to read from config file or use defaults
if [ ${#MISSING_PARAMS[@]} -ne 0 ]; then
    echo "Warning: Some LiDAR parameters not found in $RENDER_NODE:"
    for param in "${MISSING_PARAMS[@]}"; do
        echo "   - $param"
    done
    echo "   Attempting to read from config file or using defaults..."

    # Try to read from config file, or use sensible defaults
    IS_360_LIDAR=$(rosparam get $RENDER_NODE/is_360lidar 2>/dev/null || rosparam get /exploration_node/$RENDER_NODE/is_360lidar 2>/dev/null || echo "0")
    VERTICAL_FOV=$(rosparam get $RENDER_NODE/vertical_fov 2>/dev/null || rosparam get /exploration_node/$RENDER_NODE/vertical_fov 2>/dev/null || echo "42.0")
    SENSING_HORIZON=$(rosparam get $RENDER_NODE/sensing_horizon 2>/dev/null || rosparam get /exploration_node/$RENDER_NODE/sensing_horizon 2>/dev/null || echo "8")
    LIDAR_PITCH=$(rosparam get $RENDER_NODE/lidar_pitch 2>/dev/null || rosparam get /exploration_node/$RENDER_NODE/lidar_pitch 2>/dev/null || echo "40.0")
    YAW_FOV=$(rosparam get $RENDER_NODE/yaw_fov 2>/dev/null || rosparam get /exploration_node/$RENDER_NODE/yaw_fov 2>/dev/null || echo "360.0")

    echo "  Using fallback values:"
    echo "      - is_360lidar: $IS_360_LIDAR"
    echo "      - vertical_fov: $VERTICAL_FOV"
    echo "      - sensing_horizon: $SENSING_HORIZON"
    echo "      - lidar_pitch: $LIDAR_PITCH"
    echo "      - yaw_fov: $YAW_FOV"
else
    # Read parameters from rendering node (normal case with simulation)
    IS_360_LIDAR=$(rosparam get $RENDER_NODE/is_360lidar)
    VERTICAL_FOV=$(rosparam get $RENDER_NODE/vertical_fov)
    SENSING_HORIZON=$(rosparam get $RENDER_NODE/sensing_horizon)
    LIDAR_PITCH=$(rosparam get $RENDER_NODE/lidar_pitch)
    YAW_FOV=$(rosparam get $RENDER_NODE/yaw_fov)
    echo "Successfully read LiDAR parameters from $RENDER_NODE"
fi

# Calculate FOV values based on LiDAR configuration
if [ "$IS_360_LIDAR" = "1" ]; then
    FOV_UP="90.0"
    FOV_DOWN="-90.0"
    FOV_VP_UP="90.0"
    FOV_VP_DOWN="-90.0"
    echo "   Using 360° LiDAR configuration"
else
    # For standard LiDAR, split vertical FOV equally
    FOV_UP=$(echo "$VERTICAL_FOV / 2" | bc -l)
    FOV_DOWN=$(echo "-1 * $VERTICAL_FOV / 2" | bc -l)
    # Add small margin for viewpoint FOV
    VP_MARGIN="2.0"
    FOV_VP_UP=$(echo "$FOV_UP - $VP_MARGIN" | bc -l)
    FOV_VP_DOWN=$(echo "$FOV_DOWN + $VP_MARGIN" | bc -l)
    echo "   Using standard LiDAR configuration:"
    echo "   - Vertical FOV: ${VERTICAL_FOV}°"
    echo "   - Yaw FOV: ${YAW_FOV}°"
fi

# Set exploration algorithm parameters
rosparam set /exploration_node/lidar_perception/max_ray_length "$SENSING_HORIZON"
rosparam set /exploration_node/lidar_perception/fov_up "$FOV_UP"
rosparam set /exploration_node/lidar_perception/fov_down "$FOV_DOWN"
rosparam set /exploration_node/lidar_perception/fov_viewpoint_up "$FOV_VP_UP"
rosparam set /exploration_node/lidar_perception/fov_viewpoint_down "$FOV_VP_DOWN"
rosparam set /exploration_node/lidar_perception/lidar_pitch "$LIDAR_PITCH"

echo "  LiDAR parameters synced:"
echo "   - Max ray length: ${SENSING_HORIZON}m"
echo "   - FOV up: ${FOV_UP}°"
echo "   - FOV down: ${FOV_DOWN}°"
echo "   - Viewpoint FOV up: ${FOV_VP_UP}°"
echo "   - Viewpoint FOV down: ${FOV_VP_DOWN}°"
echo "   - LiDAR pitch: ${LIDAR_PITCH}°"

# Check if required executables exist
REQUIRED_NODES=("exploration_node" "traj_server" "fast_planner_node")
for node in "${REQUIRED_NODES[@]}"; do
    if ! which $node &> /dev/null; then
        echo "   Error: $node not found. Please ensure the workspace is deployed correctly."
        echo "   Expected locations:"
        echo "   - exploration_node: $PWD/devel/lib/epic_planner/"
        echo "   - traj_server: $PWD/devel/lib/plan_manage/"
        echo "   - fast_planner_node: $PWD/devel/lib/plan_manage/"
        exit 1
    fi
done

# Check for trajectory sampler if requested
if [ "$RUN_SAMPLER" = "true" ]; then
    if [ -f "$TARGET_WS/devel/lib/epic_planner/custom_trajectory_sampler" ]; then
        echo "Trajectory sampler found"
    else
        echo "##Error: custom_trajectory_sampler not found. Please deploy it first."
        exit 1
    fi
fi

echo "All required nodes found"

# Check if required topics are available (from SLAM Module)
echo "   Checking for required input topics from SLAM Module..."
echo "   This may take up to 10 seconds..."

# Input topics from SLAM
REQUIRED_TOPICS=(
    "$ODOM_TOPIC"
    "$CLOUD_TOPIC"
)

# Output topics to monitor
OUTPUT_TOPICS=(
    "/planning/pos_cmd"
    "/planning/bspline"
    "/exploration_finish"
)

# Monitor input topics
for topic in "${REQUIRED_TOPICS[@]}"; do
    timeout 10 rostopic echo $topic -n 1 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Topic $topic is available"
    else
        echo "   Warning: Topic $topic not available yet"
        echo "   Make sure SLAM Module(Oodm, Cloud) is running on the target board"
        echo "   Expected topics: $ODOM_TOPIC, $CLOUD_TOPIC"
    fi
done

# Start monitoring output topics in background
echo "Starting output topic monitoring..."
for topic in "${OUTPUT_TOPICS[@]}"; do
    (rostopic echo $topic > /dev/null 2>&1 &)
    echo "   - Monitoring $topic"
done

echo "   Starting EPIC exploration algorithm..."
echo "   Config: $CONFIG_FILE"
echo "   Odometry from SLAM Module: $ODOM_TOPIC"
echo "   Pointcloud from SLAM Module: $CLOUD_TOPIC"
echo ""
echo "   Monitor the following topics for output:"
echo "   - /planning/pos_cmd (position commands)"
echo "   - /planning/bspline (trajectory)"
echo "   - /exploration_finish (completion status)"
echo ""
echo "   Logs are written to: $RUN_LOG_DIR"
echo "   View live logs with:"
echo "   tail -f $EXPLORATION_LOG"
echo "   tail -f $FAST_PLANNER_LOG"
echo ""
echo "#Press Ctrl+C to stop"
echo ""

# Run the nodes directly (no roslaunch needed for simplicity on ARM)
echo "Starting exploration_node... (log: $EXPLORATION_LOG)"
cd $TSP_DIR && \
$TARGET_WS/devel/lib/epic_planner/exploration_node \
    __name:=exploration_node  > "$EXPLORATION_LOG" 2>&1 &

EXPLORATION_PID=$!

echo "Starting traj_server... (log: $TRAJ_SERVER_LOG)"
$TARGET_WS/devel/lib/plan_manage/traj_server \
    __name:=traj_server \
    _config_file:=$CONFIG_FILE \
    /position_cmd:=/planning/pos_cmd  > "$TRAJ_SERVER_LOG" 2>&1 &

TRAJ_SERVER_PID=$!

echo "Starting fast_planner_node... (log: $FAST_PLANNER_LOG)"
$TARGET_WS/devel/lib/plan_manage/fast_planner_node \
    __name:=fast_planner_node \
    _config_file:=$CONFIG_FILE  > "$FAST_PLANNER_LOG" 2>&1 &

FAST_PLANNER_PID=$!

# Start trajectory sampler if requested
if [ "$RUN_SAMPLER" = "true" ]; then
    echo "   Starting custom_trajectory_sampler... (log: $SAMPLER_LOG)"
    $TARGET_WS/devel/lib/epic_planner/custom_trajectory_sampler \
        __name:=trajectory_sampler \
        _sample_interval:=0.2 \
        _total_duration:=10.0 \
        _auto_duration:=true  > "$SAMPLER_LOG" 2>&1 &

    SAMPLER_PID=$!
    echo "   Trajectory sampler started (PID: $SAMPLER_PID)"
    echo "   Output topics:"
    echo "   - /planning/trajectory_discrete"
    echo "   - /planning/trajectory_waypoints"
fi

# Wait for interrupt
trap "echo '##Stopping EPIC nodes...'; kill $ROSCORE_PID $EXPLORATION_PID $TRAJ_SERVER_PID $FAST_PLANNER_PID 2>/dev/null; exit 0" INT

echo "All nodes started. Waiting..."
wait

echo "EPIC exploration algorithm stopped" 
