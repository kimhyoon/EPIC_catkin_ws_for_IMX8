# Install script for directory: /home/wave/catkin_ws/src/swarm_msgs/swarm_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wave/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swarm_msgs/msg" TYPE FILE FILES
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_fused_relative.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_remote_command.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_source_data.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected_xyzyaw.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_frame.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_frame.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/node_detected.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_detected.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/swarm_drone_basecoor.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/ImageDescriptor.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdge.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/LoopEdges.msg"
    "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/msg/FisheyeFrameDescriptor.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swarm_msgs/cmake" TYPE FILE FILES "/home/wave/catkin_ws/build/swarm_msgs/swarm_msgs/catkin_generated/installspace/swarm_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wave/catkin_ws/devel/include/swarm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wave/catkin_ws/devel/share/roseus/ros/swarm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wave/catkin_ws/devel/share/common-lisp/ros/swarm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wave/catkin_ws/devel/share/gennodejs/ros/swarm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/wave/catkin_ws/devel/lib/python3/dist-packages/swarm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/wave/catkin_ws/devel/lib/python3/dist-packages/swarm_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wave/catkin_ws/build/swarm_msgs/swarm_msgs/catkin_generated/installspace/swarm_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swarm_msgs/cmake" TYPE FILE FILES "/home/wave/catkin_ws/build/swarm_msgs/swarm_msgs/catkin_generated/installspace/swarm_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swarm_msgs/cmake" TYPE FILE FILES
    "/home/wave/catkin_ws/build/swarm_msgs/swarm_msgs/catkin_generated/installspace/swarm_msgsConfig.cmake"
    "/home/wave/catkin_ws/build/swarm_msgs/swarm_msgs/catkin_generated/installspace/swarm_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/swarm_msgs" TYPE FILE FILES "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/swarm_msgs" TYPE DIRECTORY FILES "/home/wave/catkin_ws/src/swarm_msgs/swarm_msgs/include/swarm_msgs/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.hpp$" REGEX "/\\.svn$" EXCLUDE)
endif()

