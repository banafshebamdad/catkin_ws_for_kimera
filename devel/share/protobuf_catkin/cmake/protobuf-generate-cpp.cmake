# Adapted by Helen Oleynikova from Simon Lynen's version.
#=============================================================================
# Copyright 2009 Kitware, Inc.
# Copyright 2009-2011 Philip Lowman <philip@yhbt.com>
# Copyright 2008 Esben Mose Hansen, Ange Optimization ApS
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

# Copy the preferred protoc excutable.
set(PREFERRED_PROTOC_EXECUTABLE "/usr/bin/protoc")
message(STATUS "Preferred Protoc Executable: ${PREFERRED_PROTOC_EXECUTABLE}")

function(_find_protobuf_compiler)
  # get first directory that points into devel space of protobuf catkin workspace
  list (GET protobuf_catkin_INCLUDE_DIRS 0 first_protobuf_catkin_include_dir)

  set(PROTOBUF_COMPILER_CANDIDATES
      "${PREFERRED_PROTOC_EXECUTABLE}"      # Set by preferences and exported.
      "${PROTOBUF_PROTOC_EXECUTABLE}"       # This will be "/usr/bin/protoc" on Ubuntu if find_package succeeded.
      "${CATKIN_DEVEL_PREFIX}/bin/protoc"   # only works from same workspace
                   # (DEVEL_PREFIX evaluates to workspace that is built,
                   # not workspace where protobuf_catkin is)
      "/opt/ros/$ENV{ROS_DISTRO}/bin/protoc"
      "${first_protobuf_catkin_include_dir}/../bin/protoc"  # if protoc is needed from another merged workspace,
                                                            # use path that leads to package workspace
  )

  foreach(candidate ${PROTOBUF_COMPILER_CANDIDATES})
    if(EXISTS ${candidate})
      message(STATUS "Found protobuf compiler: ${candidate}")
      set(PROTOBUF_COMPILER ${candidate} PARENT_SCOPE)
      return()
    endif()
  endforeach()
  message(FATAL_ERROR "Couldn't find protobuf compiler. Please ensure that protobuf_catkin is properly installed. Checked the following paths: ${PROTOBUF_COMPILER_CANDIDATES}")
endfunction()

# Legacy function for backwards compatibility.
function(PROTOBUF_CATKIN_GENERATE_CPP SRCS HDRS)
  message(WARNING "PROTOBUF_CATKIN_GENERATE_CPP is deprecated. Please use PROTOBUF_CATKIN_GENERATE_CPP2 instead. Check the Readme for details.")

  if(NOT ARGN)
    message(SEND_ERROR "Error: PROTOBUF_CATKIN_GENERATE_CPP() called without any proto files")
    return()
  endif(NOT ARGN)

  if(PROTOBUF_GENERATE_CPP_APPEND_PATH)
    # Create an include path for each file specified
    foreach(FIL ${ARGN})
      get_filename_component(ABS_FIL ${FIL} ABSOLUTE)
      get_filename_component(ABS_PATH ${ABS_FIL} PATH)
      list(FIND _protobuf_include_path ${ABS_PATH} _contains_already)
      if(${_contains_already} EQUAL -1)
          list(APPEND _protobuf_include_path -I ${ABS_PATH})
      endif()
    endforeach()
  else()
    set(_protobuf_include_path -I ${CMAKE_CURRENT_SOURCE_DIR})
  endif()

  # Add custom protobuf include directories
  if(PROTOBUF_EXPORT_PATH)
    foreach(PBEP ${PROTOBUF_EXPORT_PATH})
      list(APPEND _protobuf_include_path -I ${PBEP})
    endforeach()
  endif()

  set(${SRCS})
  set(${HDRS})
  _find_protobuf_compiler()
  foreach(FIL ${ARGN})
    get_filename_component(ABS_FIL ${FIL} ABSOLUTE)
    get_filename_component(FIL_WE ${FIL} NAME_WE)

    list(APPEND ${SRCS} "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.cc")
    list(APPEND ${HDRS} "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.h")

    add_custom_command(
      OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.cc"
             "${CMAKE_CURRENT_BINARY_DIR}/${FIL_WE}.pb.h"
      COMMAND  "${PROTOBUF_COMPILER}"
      ARGS --cpp_out  ${CMAKE_CURRENT_BINARY_DIR} ${_protobuf_include_path} ${ABS_FIL}
      DEPENDS ${ABS_FIL}
      COMMENT "Running C++ protocol buffer compiler on ${FIL}"
      VERBATIM )
  endforeach()

  set_source_files_properties(${${SRCS}} ${${HDRS}} PROPERTIES GENERATED TRUE)
  set(${SRCS} ${${SRCS}} PARENT_SCOPE)
  set(${HDRS} ${${HDRS}} PARENT_SCOPE)
  install(FILES ${${HDRS}}
          DESTINATION ${CATKIN_GLOBAL_INCLUDE_DESTINATION})
endfunction()

function(PROTOBUF_CATKIN_GENERATE_CPP2 BASE_PATH SRCS HDRS)
  if(NOT ARGN)
    message(SEND_ERROR "Error: PROTOBUF_CATKIN_GENERATE_CPP2() called without any proto files")
    return()
  endif(NOT ARGN)

  list(APPEND _protobuf_include_path -I ${CMAKE_CURRENT_SOURCE_DIR}/${BASE_PATH})

  set(${SRCS})
  set(${HDRS})

  # Folder where the proto sources are generated in. This should resolve to
  # "build/project_name/compiled_proto".
  set(COMPILED_PROTO_FOLDER "${CMAKE_CURRENT_BINARY_DIR}/compiled_proto")
  file(MAKE_DIRECTORY ${COMPILED_PROTO_FOLDER})

  # Folder where the generated headers are installed to. This should resolve to
  # "devel/include".
  set(PROTO_GENERATED_HEADERS_INSTALL_DIR
      ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION})
  file(MAKE_DIRECTORY ${PROTO_GENERATED_HEADERS_INSTALL_DIR})

  # Folder where the proto files are placed, so that they can be used in other
  # proto definitions. This should resolve to "devel/share/proto".
  set(PROTO_SHARE_SUB_FOLDER "proto")
  set(PROTO_FILE_INSTALL_DIR
      ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_SHARE_DESTINATION}/${PROTO_SHARE_SUB_FOLDER})
  file(MAKE_DIRECTORY ${PROTO_FILE_INSTALL_DIR})

  set(include_candidates
       "/usr/include"
       "${PROTO_FILE_INSTALL_DIR}"
       "${CMAKE_INSTALL_PREFIX}/${CATKIN_GLOBAL_SHARE_DESTINATION}/${PROTO_SHARE_SUB_FOLDER}"
       "/opt/ros/$ENV{ROS_DISTRO}/${CATKIN_GLOBAL_SHARE_DESTINATION}/${PROTO_SHARE_SUB_FOLDER}"
       "/opt/ros/$ENV{ROS_DISTRO}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}/grpc/"
  )
  foreach(include_candidate ${include_candidates})
    if(EXISTS "${include_candidate}")
      list(APPEND _protobuf_include_path "-I" ${include_candidate})
    endif()
  endforeach()

  set(PYTHON_PROTOC_ARG_VALUE "")
  set(PYTHON_PROTOC_ARG_FLAGS "")
  set(PROTOC_PYTHON_COMMENT "")
  if(${PROTOBUF_COMPILE_PYTHON})
    # Setting the protoc arguments to include compilation of Python files.
    set(PYTHON_PROTOC_ARG_FLAG "--python_out")
    set(PYTHON_PROTOC_ARG_VALUE ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_PYTHON_DESTINATION})
    set(PROTOC_PYTHON_COMMENT " and Python")
  endif()
  set(GRPC_PROTOC_ARG_FLAG "")
  set(GRPC_PROTOC_ARG_VALUE "")
  set(GRPC_PROTOC_PLUGIN_FLAG "")
  set(GRPC_PROTOC_DEP "")
  set(GRPC_PROTOC_COMMENT "")
  if (${PROTOBUF_COMPILE_GRPC})
    set(GRPC_PROTOC_ARG_FLAG "--grpc_out")
    set(GRPC_PROTOC_ARG_VALUE ${COMPILED_PROTO_FOLDER})
    set(GRPC_PROTOC_PLUGIN_FLAG "--plugin=protoc-gen-grpc=${GRPC_CPP_PLUGIN_GLOBAL}")
    set(GRPC_PROTOC_COMMENT " and GRPC")
  endif()

  _find_protobuf_compiler()
  foreach(FIL ${ARGN})
    get_filename_component(ABS_FIL ${FIL} ABSOLUTE)
    get_filename_component(FIL_WE ${FIL} NAME_WE)
    get_filename_component(FIL_REL_DIR ${FIL} DIRECTORY)

    # FIL_REL_DIR contains the path to the proto file, starting inside
    # BASE_PATH. E.g., for base path "proto" and file
    # "proto/project/definitions.proto", FIL_REL_DIR would be "project".
    string(REGEX REPLACE "${BASE_PATH}/?" "" FIL_REL_DIR ${FIL_REL_DIR})

    # Variable for the protobuf share folder (e.g., ../devel/share/proto/project-name)
    set(PROTO_SHARE_FOLDER ${PROTO_FILE_INSTALL_DIR}/${FIL_REL_DIR})
    file(MAKE_DIRECTORY ${PROTO_SHARE_FOLDER})

    # The protoc output folder for C++ .h/.cc files.
    set(OUTPUT_FOLDER ${COMPILED_PROTO_FOLDER}/${FIL_REL_DIR})
    set(OUTPUT_FOLDER_BASE ${COMPILED_PROTO_FOLDER})
    file(MAKE_DIRECTORY ${OUTPUT_FOLDER})
    file(MAKE_DIRECTORY "${PROTO_GENERATED_HEADERS_INSTALL_DIR}/${FIL_REL_DIR}")
    set(OUTPUT_BASE_FILE_NAME "${OUTPUT_FOLDER}/${FIL_WE}")

    list(APPEND ${SRCS} "${OUTPUT_BASE_FILE_NAME}.pb.cc")
    list(APPEND ${HDRS} "${OUTPUT_BASE_FILE_NAME}.pb.h")

    add_custom_command(
      OUTPUT "${OUTPUT_BASE_FILE_NAME}.pb.cc"
             "${OUTPUT_BASE_FILE_NAME}.pb.h"
             "${PROTO_GENERATED_HEADERS_INSTALL_DIR}/${FIL_WE}.pb.h"
             "${PROTO_SHARE_FOLDER}/${FIL_WE}.proto"
      COMMAND  "${PROTOBUF_COMPILER}"
      ARGS --cpp_out ${OUTPUT_FOLDER_BASE} ${PYTHON_PROTOC_ARG_FLAG} ${PYTHON_PROTOC_ARG_VALUE} ${GRPC_PROTOC_ARG_FLAG} ${GRPC_PROTOC_ARG_VALUE} ${GRPC_PROTOC_PLUGIN_FLAG} ${_protobuf_include_path} ${ABS_FIL}
      COMMAND ${CMAKE_COMMAND} -E copy
              "${OUTPUT_BASE_FILE_NAME}.pb.h"
              "${PROTO_GENERATED_HEADERS_INSTALL_DIR}/${FIL_REL_DIR}/${FIL_WE}.pb.h"
      COMMAND ${CMAKE_COMMAND} -E copy_if_different
              ${ABS_FIL}
              "${PROTO_SHARE_FOLDER}/${FIL_WE}.proto"
      DEPENDS ${ABS_FIL}
      COMMENT "Running C++${PYTHON_PROTOC_COMMENT}${GRPC_PROTOC_COMMENT} protocol buffer compiler on ${FIL}."
      VERBATIM)
      install(
          FILES ${ABS_FIL}
          DESTINATION ${CATKIN_GLOBAL_SHARE_DESTINATION}/${PROTO_SHARE_SUB_FOLDER}/${FIL_REL_DIR}
      )

    # Copy over the GRPC stuff as well.
    if (${PROTOBUF_COMPILE_GRPC})
      add_custom_command(
        OUTPUT "${OUTPUT_BASE_FILE_NAME}.grpc.pb.cc"
               "${OUTPUT_BASE_FILE_NAME}.grpc.pb.h"
               "${PROTO_GENERATED_HEADERS_INSTALL_DIR}/{FIL_REL_DIR}/${FIL_WE}.grpc.pb.h"
        COMMAND ${CMAKE_COMMAND} -E copy_if_different
                "${OUTPUT_BASE_FILE_NAME}.grpc.pb.h"
                "${PROTO_GENERATED_HEADERS_INSTALL_DIR}/${FIL_REL_DIR}/${FIL_WE}.grpc.pb.h"
        DEPENDS ${ABS_FIL} "${OUTPUT_BASE_FILE_NAME}.pb.h"
        COMMENT "Copying over GRPC artifacts on ${FIL}."
        VERBATIM)
      list(APPEND ${SRCS} "${OUTPUT_BASE_FILE_NAME}.grpc.pb.cc")
      list(APPEND ${HDRS} "${OUTPUT_BASE_FILE_NAME}.grpc.pb.h")
    endif()
  endforeach()

  set_source_files_properties(${${SRCS}} ${${HDRS}} PROPERTIES GENERATED TRUE)
  set(${SRCS} ${${SRCS}} PARENT_SCOPE)
  set(${HDRS} ${${HDRS}} PARENT_SCOPE)

  include_directories(${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION})
  install(FILES ${${HDRS}}
          DESTINATION ${CATKIN_GLOBAL_INCLUDE_DESTINATION}/${FIL_REL_DIR})

  if(${PROTOBUF_COMPILE_PYTHON})
    # The path of the Python package under devel/lib/python../dist-packages/{project_name}.
    set(PYTHON_PACKAGE_PATH ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_PYTHON_DESTINATION})
    file(MAKE_DIRECTORY ${PYTHON_PACKAGE_PATH})
    # The filepath of the Python package init file.
    set(PYTHON_INIT_FILEPATH "${PYTHON_PACKAGE_PATH}/__init__.py")
    if(NOT EXISTS ${PYTHON_INIT_FILEPATH})
      add_custom_target(create_empty_init ALL
        COMMAND ${CMAKE_COMMAND} -E touch ${PYTHON_INIT_FILEPATH}
        COMMENT "Created empty __init__.py."
        VERBATIM)
    endif()
    install(DIRECTORY ${PYTHON_PACKAGE_PATH}
            DESTINATION ${CATKIN_GLOBAL_PYTHON_DESTINATION})
  endif()

endfunction()
#
# Main.
#


# By default have PROTOBUF_GENERATE_CPP macro pass -I to protoc
# for each directory where a proto file is referenced.
if(NOT DEFINED PROTOBUF_GENERATE_CPP_APPEND_PATH)
  set(PROTOBUF_GENERATE_CPP_APPEND_PATH TRUE)
endif()

# Ensure that devel/include is part of the include directories. This is
# necessary as otherwise sometimes that folder is not added to the include dirs
# which means that the compiler cannot find the generated proto header from
# other packages.
include_directories(${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION})
