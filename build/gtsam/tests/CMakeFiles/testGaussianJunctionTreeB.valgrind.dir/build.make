# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/banafshe/catkin_ws/src/gtsam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/banafshe/catkin_ws/build/gtsam

# Utility rule file for testGaussianJunctionTreeB.valgrind.

# Include the progress variables for this target.
include tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/progress.make

tests/CMakeFiles/testGaussianJunctionTreeB.valgrind: tests/testGaussianJunctionTreeB
	cd /home/banafshe/catkin_ws/build/gtsam/tests && valgrind --error-exitcode=1 /home/banafshe/catkin_ws/build/gtsam/tests/testGaussianJunctionTreeB

testGaussianJunctionTreeB.valgrind: tests/CMakeFiles/testGaussianJunctionTreeB.valgrind
testGaussianJunctionTreeB.valgrind: tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/build.make

.PHONY : testGaussianJunctionTreeB.valgrind

# Rule to build all files generated by this target.
tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/build: testGaussianJunctionTreeB.valgrind

.PHONY : tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/build

tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/clean:
	cd /home/banafshe/catkin_ws/build/gtsam/tests && $(CMAKE_COMMAND) -P CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/clean

tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/depend:
	cd /home/banafshe/catkin_ws/build/gtsam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/gtsam /home/banafshe/catkin_ws/src/gtsam/tests /home/banafshe/catkin_ws/build/gtsam /home/banafshe/catkin_ws/build/gtsam/tests /home/banafshe/catkin_ws/build/gtsam/tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testGaussianJunctionTreeB.valgrind.dir/depend
