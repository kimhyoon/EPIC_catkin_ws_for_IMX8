#!/bin/bash
# EPIC ARM Setup Script

echo '🔧 Setting up EPIC on ARM target board...'

# Source ROS
source /opt/ros/noetic/setup.bash

# Add devel/lib to library path
export LD_LIBRARY_PATH=$PWD/devel/lib:$LD_LIBRARY_PATH

# Add executables to PATH
export PATH=$PWD/devel/lib/epic_planner:$PWD/devel/lib/plan_manage:$PWD/devel/lib/traj_utils:$PATH

# Set Python path for generated message/service types (required for rosservice call / rostopic)
export PYTHONPATH=$PWD/devel/lib/python3/dist-packages:$PYTHONPATH

# Set ROS package path
export ROS_PACKAGE_PATH=$PWD/src:$ROS_PACKAGE_PATH

# Set cmake prefix path for ROS package discovery
export CMAKE_PREFIX_PATH=$PWD/devel:$CMAKE_PREFIX_PATH
export ROS_PACKAGE_PATH=$PWD/devel/share:$ROS_PACKAGE_PATH

echo '✅ EPIC ARM environment configured'
echo ''
echo 'Usage: ./run_target_board.sh [map_name]' 