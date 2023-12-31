# Install script for directory: /home/banafshe/catkin_ws/src/gtsam/gtsam/sfm

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/banafshe/catkin_ws/devel")
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
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gtsam/sfm" TYPE FILE FILES
    "/home/banafshe/catkin_ws/src/gtsam/gtsam/sfm/BinaryMeasurement.h"
    "/home/banafshe/catkin_ws/src/gtsam/gtsam/sfm/MFAS.h"
    "/home/banafshe/catkin_ws/src/gtsam/gtsam/sfm/ShonanAveraging.h"
    "/home/banafshe/catkin_ws/src/gtsam/gtsam/sfm/ShonanFactor.h"
    "/home/banafshe/catkin_ws/src/gtsam/gtsam/sfm/ShonanGaugeFactor.h"
    "/home/banafshe/catkin_ws/src/gtsam/gtsam/sfm/TranslationFactor.h"
    "/home/banafshe/catkin_ws/src/gtsam/gtsam/sfm/TranslationRecovery.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/banafshe/catkin_ws/build/gtsam/gtsam/sfm/tests/cmake_install.cmake")

endif()

