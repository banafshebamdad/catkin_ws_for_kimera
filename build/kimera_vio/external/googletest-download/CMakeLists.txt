cmake_minimum_required(VERSION 2.8.2)

project(googletest-download NONE)

include(ExternalProject)
ExternalProject_Add(googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG v1.10.x # Last working version
    SOURCE_DIR "/home/banafshe/catkin_ws/build/kimera_vio/external/googletest-src"
    BINARY_DIR "/home/banafshe/catkin_ws/build/kimera_vio/external/googletest-build"
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    TEST_COMMAND ""
)
