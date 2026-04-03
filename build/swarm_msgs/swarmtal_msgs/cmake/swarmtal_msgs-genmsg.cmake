# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "swarmtal_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iswarmtal_msgs:/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(swarmtal_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg" NAME_WE)
add_custom_target(_swarmtal_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarmtal_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg" "geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg" NAME_WE)
add_custom_target(_swarmtal_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarmtal_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg" "sensor_msgs/Imu:geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg" NAME_WE)
add_custom_target(_swarmtal_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarmtal_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg" "geometry_msgs/Vector3:sensor_msgs/Imu:geometry_msgs/Quaternion:swarmtal_msgs/drone_pos_ctrl_cmd:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg" NAME_WE)
add_custom_target(_swarmtal_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarmtal_msgs" "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_cpp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_cpp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_cpp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarmtal_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(swarmtal_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarmtal_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(swarmtal_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(swarmtal_msgs_generate_messages swarmtal_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_cpp _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_cpp _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_cpp _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_cpp _swarmtal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarmtal_msgs_gencpp)
add_dependencies(swarmtal_msgs_gencpp swarmtal_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarmtal_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_eus(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_eus(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_eus(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarmtal_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(swarmtal_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarmtal_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(swarmtal_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(swarmtal_msgs_generate_messages swarmtal_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_eus _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_eus _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_eus _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_eus _swarmtal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarmtal_msgs_geneus)
add_dependencies(swarmtal_msgs_geneus swarmtal_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarmtal_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_lisp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_lisp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_lisp(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarmtal_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(swarmtal_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarmtal_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(swarmtal_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(swarmtal_msgs_generate_messages swarmtal_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_lisp _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_lisp _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_lisp _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_lisp _swarmtal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarmtal_msgs_genlisp)
add_dependencies(swarmtal_msgs_genlisp swarmtal_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarmtal_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_nodejs(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_nodejs(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_nodejs(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarmtal_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(swarmtal_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarmtal_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(swarmtal_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(swarmtal_msgs_generate_messages swarmtal_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_nodejs _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_nodejs _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_nodejs _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_nodejs _swarmtal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarmtal_msgs_gennodejs)
add_dependencies(swarmtal_msgs_gennodejs swarmtal_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarmtal_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_py(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_py(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg"
  "${MSG_I_FLAGS}"
  "/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/nxp-real-time-edge/2.5/sysroots/armv8a-poky-linux/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs
)
_generate_msg_py(swarmtal_msgs
  "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(swarmtal_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(swarmtal_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(swarmtal_msgs_generate_messages swarmtal_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_ctrl_cmd.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_py _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_pos_control_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_py _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_commander_state.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_py _swarmtal_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wave/catkin_ws/src/swarm_msgs/swarmtal_msgs/msg/drone_onboard_command.msg" NAME_WE)
add_dependencies(swarmtal_msgs_generate_messages_py _swarmtal_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarmtal_msgs_genpy)
add_dependencies(swarmtal_msgs_genpy swarmtal_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarmtal_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarmtal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarmtal_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(swarmtal_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(swarmtal_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(swarmtal_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(swarmtal_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarmtal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarmtal_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(swarmtal_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(swarmtal_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(swarmtal_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(swarmtal_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarmtal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarmtal_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(swarmtal_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(swarmtal_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(swarmtal_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(swarmtal_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarmtal_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarmtal_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(swarmtal_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(swarmtal_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(swarmtal_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(swarmtal_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarmtal_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(swarmtal_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(swarmtal_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(swarmtal_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(swarmtal_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
