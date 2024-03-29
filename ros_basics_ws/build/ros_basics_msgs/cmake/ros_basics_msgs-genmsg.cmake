# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_basics_msgs: 5 messages, 6 services")

set(MSG_I_FLAGS "-Iros_basics_msgs:/home/student/ros_basics_ws/src/ros_basics_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_basics_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg" ""
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg" "ros_basics_msgs/RPY:geometry_msgs/Point"
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg" "ros_basics_msgs/RPY:std_msgs/Header:geometry_msgs/Point:ros_basics_msgs/SimplePose"
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg" ""
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv" ""
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv" NAME_WE)
add_custom_target(_ros_basics_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_basics_msgs" "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv" "std_msgs/Header:geometry_msgs/Point:ros_basics_msgs/RPY:ros_basics_msgs/SimplePoseStamped:ros_basics_msgs/SimplePose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)

### Generating Services
_generate_srv_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_cpp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
)

### Generating Module File
_generate_module_cpp(ros_basics_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_basics_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_basics_msgs_generate_messages ros_basics_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_cpp _ros_basics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_basics_msgs_gencpp)
add_dependencies(ros_basics_msgs_gencpp ros_basics_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basics_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)

### Generating Services
_generate_srv_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_eus(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
)

### Generating Module File
_generate_module_eus(ros_basics_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_basics_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_basics_msgs_generate_messages ros_basics_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_eus _ros_basics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_basics_msgs_geneus)
add_dependencies(ros_basics_msgs_geneus ros_basics_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basics_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)

### Generating Services
_generate_srv_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_lisp(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
)

### Generating Module File
_generate_module_lisp(ros_basics_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_basics_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_basics_msgs_generate_messages ros_basics_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_lisp _ros_basics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_basics_msgs_genlisp)
add_dependencies(ros_basics_msgs_genlisp ros_basics_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basics_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)

### Generating Services
_generate_srv_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_nodejs(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
)

### Generating Module File
_generate_module_nodejs(ros_basics_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_basics_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_basics_msgs_generate_messages ros_basics_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_nodejs _ros_basics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_basics_msgs_gennodejs)
add_dependencies(ros_basics_msgs_gennodejs ros_basics_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basics_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_msg_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)

### Generating Services
_generate_srv_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)
_generate_srv_py(ros_basics_msgs
  "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg;/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
)

### Generating Module File
_generate_module_py(ros_basics_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_basics_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_basics_msgs_generate_messages ros_basics_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePose.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimplePoseStamped.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/SimpleVelocities.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/msg/ProximitySensors.msg" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/AddWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/RemoveWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CurrentWaypoint.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/GetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/SetWaypoints.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/ros_basics_ws/src/ros_basics_msgs/srv/CheckWaypointReached.srv" NAME_WE)
add_dependencies(ros_basics_msgs_generate_messages_py _ros_basics_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_basics_msgs_genpy)
add_dependencies(ros_basics_msgs_genpy ros_basics_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basics_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basics_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_basics_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ros_basics_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_basics_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_basics_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ros_basics_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basics_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_basics_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ros_basics_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_basics_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_basics_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ros_basics_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basics_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_basics_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ros_basics_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
