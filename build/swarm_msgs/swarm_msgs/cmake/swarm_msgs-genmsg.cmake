# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "swarm_msgs: 14 messages, 0 services")

set(MSG_I_FLAGS "-Iswarm_msgs:/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iswarmtal_msgs:/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg;-Iactionlib_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(swarm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg" "geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg" "swarmtal_msgs/drone_onboard_command"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/TwistWithCovariance:nav_msgs/Odometry:geometry_msgs/PoseWithCovariance:geometry_msgs/Twist:geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg" "geometry_msgs/Point:geometry_msgs/Pose:swarm_msgs/node_detected:geometry_msgs/PoseWithCovariance:swarm_msgs/node_detected_xyzyaw:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg" "swarm_msgs/node_frame:geometry_msgs/Point:geometry_msgs/Pose:swarm_msgs/node_detected:geometry_msgs/PoseWithCovariance:swarm_msgs/node_detected_xyzyaw:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg" "geometry_msgs/Pose:geometry_msgs/Point:swarm_msgs/node_detected:geometry_msgs/PoseWithCovariance:swarm_msgs/node_detected_xyzyaw:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg" "geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Point32:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg" "geometry_msgs/Pose:swarm_msgs/LoopEdge:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg" NAME_WE)
add_custom_target(_swarm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg" "geometry_msgs/Pose:swarm_msgs/ImageDescriptor:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Point32:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_cpp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(swarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(swarm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(swarm_msgs_generate_messages swarm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_cpp _swarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_msgs_gencpp)
add_dependencies(swarm_msgs_gencpp swarm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)
_generate_msg_eus(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(swarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(swarm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(swarm_msgs_generate_messages swarm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_eus _swarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_msgs_geneus)
add_dependencies(swarm_msgs_geneus swarm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)
_generate_msg_lisp(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(swarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(swarm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(swarm_msgs_generate_messages swarm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_lisp _swarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_msgs_genlisp)
add_dependencies(swarm_msgs_genlisp swarm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)
_generate_msg_nodejs(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(swarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(swarm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(swarm_msgs_generate_messages swarm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_nodejs _swarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_msgs_gennodejs)
add_dependencies(swarm_msgs_gennodejs swarm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg"
  "${MSG_I_FLAGS}"
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)
_generate_msg_py(swarm_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(swarm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(swarm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(swarm_msgs_generate_messages swarm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg" NAME_WE)
add_dependencies(swarm_msgs_generate_messages_py _swarm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_msgs_genpy)
add_dependencies(swarm_msgs_genpy swarm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(swarm_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(swarm_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(swarm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(swarm_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET swarmtal_msgs_generate_messages_cpp)
  add_dependencies(swarm_msgs_generate_messages_cpp swarmtal_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(swarm_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(swarm_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(swarm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(swarm_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET swarmtal_msgs_generate_messages_eus)
  add_dependencies(swarm_msgs_generate_messages_eus swarmtal_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(swarm_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(swarm_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(swarm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(swarm_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET swarmtal_msgs_generate_messages_lisp)
  add_dependencies(swarm_msgs_generate_messages_lisp swarmtal_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(swarm_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(swarm_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(swarm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(swarm_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET swarmtal_msgs_generate_messages_nodejs)
  add_dependencies(swarm_msgs_generate_messages_nodejs swarmtal_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(swarm_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(swarm_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(swarm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(swarm_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET swarmtal_msgs_generate_messages_py)
  add_dependencies(swarm_msgs_generate_messages_py swarmtal_msgs_generate_messages_py)
endif()
