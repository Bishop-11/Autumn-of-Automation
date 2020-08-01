# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "initials: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iinitials:/home/bishop/Aws/src/initials/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iturtlesim:/opt/ros/kinetic/share/turtlesim/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(initials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bishop/Aws/src/initials/msg/initials_msg.msg" NAME_WE)
add_custom_target(_initials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "initials" "/home/bishop/Aws/src/initials/msg/initials_msg.msg" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(initials
  "/home/bishop/Aws/src/initials/msg/initials_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/initials
)

### Generating Services

### Generating Module File
_generate_module_cpp(initials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/initials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(initials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(initials_generate_messages initials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bishop/Aws/src/initials/msg/initials_msg.msg" NAME_WE)
add_dependencies(initials_generate_messages_cpp _initials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(initials_gencpp)
add_dependencies(initials_gencpp initials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS initials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(initials
  "/home/bishop/Aws/src/initials/msg/initials_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/initials
)

### Generating Services

### Generating Module File
_generate_module_eus(initials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/initials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(initials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(initials_generate_messages initials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bishop/Aws/src/initials/msg/initials_msg.msg" NAME_WE)
add_dependencies(initials_generate_messages_eus _initials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(initials_geneus)
add_dependencies(initials_geneus initials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS initials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(initials
  "/home/bishop/Aws/src/initials/msg/initials_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/initials
)

### Generating Services

### Generating Module File
_generate_module_lisp(initials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/initials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(initials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(initials_generate_messages initials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bishop/Aws/src/initials/msg/initials_msg.msg" NAME_WE)
add_dependencies(initials_generate_messages_lisp _initials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(initials_genlisp)
add_dependencies(initials_genlisp initials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS initials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(initials
  "/home/bishop/Aws/src/initials/msg/initials_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/initials
)

### Generating Services

### Generating Module File
_generate_module_nodejs(initials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/initials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(initials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(initials_generate_messages initials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bishop/Aws/src/initials/msg/initials_msg.msg" NAME_WE)
add_dependencies(initials_generate_messages_nodejs _initials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(initials_gennodejs)
add_dependencies(initials_gennodejs initials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS initials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(initials
  "/home/bishop/Aws/src/initials/msg/initials_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/initials
)

### Generating Services

### Generating Module File
_generate_module_py(initials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/initials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(initials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(initials_generate_messages initials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bishop/Aws/src/initials/msg/initials_msg.msg" NAME_WE)
add_dependencies(initials_generate_messages_py _initials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(initials_genpy)
add_dependencies(initials_genpy initials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS initials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/initials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/initials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(initials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET turtlesim_generate_messages_cpp)
  add_dependencies(initials_generate_messages_cpp turtlesim_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/initials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/initials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(initials_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET turtlesim_generate_messages_eus)
  add_dependencies(initials_generate_messages_eus turtlesim_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/initials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/initials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(initials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET turtlesim_generate_messages_lisp)
  add_dependencies(initials_generate_messages_lisp turtlesim_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/initials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/initials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(initials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET turtlesim_generate_messages_nodejs)
  add_dependencies(initials_generate_messages_nodejs turtlesim_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/initials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/initials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/initials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(initials_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET turtlesim_generate_messages_py)
  add_dependencies(initials_generate_messages_py turtlesim_generate_messages_py)
endif()
