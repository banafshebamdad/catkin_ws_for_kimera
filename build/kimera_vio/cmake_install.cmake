# Install script for directory: /home/banafshe/catkin_ws/src/Kimera-VIO

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkimera_vio.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkimera_vio.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkimera_vio.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/banafshe/catkin_ws/build/kimera_vio/libkimera_vio.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkimera_vio.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkimera_vio.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkimera_vio.so"
         OLD_RPATH "/home/banafshe/catkin_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkimera_vio.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/kimera_vio/kimera_vioTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/kimera_vio/kimera_vioTargets.cmake"
         "/home/banafshe/catkin_ws/build/kimera_vio/CMakeFiles/Export/lib/cmake/kimera_vio/kimera_vioTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/kimera_vio/kimera_vioTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/kimera_vio/kimera_vioTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/kimera_vio" TYPE FILE FILES "/home/banafshe/catkin_ws/build/kimera_vio/CMakeFiles/Export/lib/cmake/kimera_vio/kimera_vioTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/kimera_vio" TYPE FILE FILES "/home/banafshe/catkin_ws/build/kimera_vio/CMakeFiles/Export/lib/cmake/kimera_vio/kimera_vioTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/banafshe/catkin_ws/src/Kimera-VIO/include/" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/kimera_vio" TYPE FILE FILES
    "/home/banafshe/catkin_ws/build/kimera_vio/kimera_vioConfig.cmake"
    "/home/banafshe/catkin_ws/build/kimera_vio/kimera_vioConfigVersion.cmake"
    "/home/banafshe/catkin_ws/src/Kimera-VIO/cmake/FindGflags.cmake"
    "/home/banafshe/catkin_ws/src/Kimera-VIO/cmake/FindGlog.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/dataprovider/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/dataprovider/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/playground/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/playground/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/frontend/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/frontend/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/backend/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/backend/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/factors/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/factors/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/mesh/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/mesh/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/initial/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/initial/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/utils/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/utils/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/pipeline/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/pipeline/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/common/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/common/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/loopclosure/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/loopclosure/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/logging/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/logging/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/imu-frontend/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/imu-frontend/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/visualizer/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/visualizer/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/include/kimera-vio/third_party/triangle/cmake_install.cmake")
  include("/home/banafshe/catkin_ws/build/kimera_vio/src/third_party/triangle/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/banafshe/catkin_ws/build/kimera_vio/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
