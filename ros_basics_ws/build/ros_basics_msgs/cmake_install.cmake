# Install script for directory: /home/student/ros_basics_ws/src/ros_basics_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/student/ros_basics_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_basics_msgs/msg" TYPE FILE FILES
    "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_basics_msgs/srv" TYPE FILE FILES
    "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv"
    "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_basics_msgs/cmake" TYPE FILE FILES "/home/student/ros_basics_ws/build/ros_basics_msgs/catkin_generated/installspace/ros_basics_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/student/ros_basics_ws/devel/include/ros_basics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/student/ros_basics_ws/devel/share/roseus/ros/ros_basics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/student/ros_basics_ws/devel/share/common-lisp/ros/ros_basics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/student/ros_basics_ws/devel/share/gennodejs/ros/ros_basics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/student/ros_basics_ws/devel/lib/python3/dist-packages/ros_basics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/student/ros_basics_ws/devel/lib/python3/dist-packages/ros_basics_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/student/ros_basics_ws/build/ros_basics_msgs/catkin_generated/installspace/ros_basics_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_basics_msgs/cmake" TYPE FILE FILES "/home/student/ros_basics_ws/build/ros_basics_msgs/catkin_generated/installspace/ros_basics_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_basics_msgs/cmake" TYPE FILE FILES
    "/home/student/ros_basics_ws/build/ros_basics_msgs/catkin_generated/installspace/ros_basics_msgsConfig.cmake"
    "/home/student/ros_basics_ws/build/ros_basics_msgs/catkin_generated/installspace/ros_basics_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_basics_msgs" TYPE FILE FILES "/home/student/ros_basics_ws/src/ros_basics_msgs/package.xml")
endif()

