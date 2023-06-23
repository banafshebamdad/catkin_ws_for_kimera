# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget metis-gtsam metis-gtsam-if CppUnitLite gtsam)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target metis-gtsam
add_library(metis-gtsam SHARED IMPORTED)

set_target_properties(metis-gtsam PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "/home/banafshe/catkin_ws/src/gtsam/gtsam/3rdparty/metis/include;/home/banafshe/catkin_ws/src/gtsam/gtsam/3rdparty/metis/libmetis;/home/banafshe/catkin_ws/src/gtsam/gtsam/3rdparty/metis/GKlib"
  INTERFACE_LINK_LIBRARIES "m"
)

# Create imported target metis-gtsam-if
add_library(metis-gtsam-if INTERFACE IMPORTED)

set_target_properties(metis-gtsam-if PROPERTIES
  INTERFACE_LINK_LIBRARIES "metis-gtsam"
)

# Create imported target CppUnitLite
add_library(CppUnitLite STATIC IMPORTED)

set_target_properties(CppUnitLite PROPERTIES
  INTERFACE_LINK_LIBRARIES "Boost::boost"
)

# Create imported target gtsam
add_library(gtsam SHARED IMPORTED)

set_target_properties(gtsam PROPERTIES
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_COMPILE_OPTIONS "-march=native"
  INTERFACE_INCLUDE_DIRECTORIES "/home/banafshe/catkin_ws/src/gtsam/gtsam/3rdparty/SuiteSparse_config;/home/banafshe/catkin_ws/src/gtsam/gtsam/3rdparty/Spectra;/home/banafshe/catkin_ws/src/gtsam/gtsam/3rdparty/CCOLAMD/Include;/home/banafshe/catkin_ws/src/gtsam;/home/banafshe/catkin_ws/build/gtsam;/home/banafshe/catkin_ws/src/gtsam/CppUnitLite;/home/banafshe/catkin_ws/src/gtsam/gtsam/3rdparty/Eigen/;/usr/include"
  INTERFACE_LINK_LIBRARIES "Boost::serialization;Boost::system;Boost::filesystem;Boost::thread;Boost::date_time;Boost::regex;Boost::timer;Boost::chrono;tbb;tbbmalloc;metis-gtsam-if"
)

# Import target "metis-gtsam" for configuration "Release"
set_property(TARGET metis-gtsam APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(metis-gtsam PROPERTIES
  IMPORTED_LOCATION_RELEASE "/home/banafshe/catkin_ws/build/gtsam/gtsam/3rdparty/metis/libmetis/libmetis-gtsam.so"
  IMPORTED_SONAME_RELEASE "libmetis-gtsam.so"
  )

# Import target "CppUnitLite" for configuration "Release"
set_property(TARGET CppUnitLite APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(CppUnitLite PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "/home/banafshe/catkin_ws/build/gtsam/CppUnitLite/libCppUnitLite.a"
  )

# Import target "gtsam" for configuration "Release"
set_property(TARGET gtsam APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gtsam PROPERTIES
  IMPORTED_LOCATION_RELEASE "/home/banafshe/catkin_ws/build/gtsam/gtsam/libgtsam.so.4.1.0"
  IMPORTED_SONAME_RELEASE "libgtsam.so.4"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
