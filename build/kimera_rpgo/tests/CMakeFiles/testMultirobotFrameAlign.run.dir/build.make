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
CMAKE_SOURCE_DIR = /home/banafshe/catkin_ws/src/Kimera-RPGO

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/banafshe/catkin_ws/build/kimera_rpgo

# Utility rule file for testMultirobotFrameAlign.run.

# Include the progress variables for this target.
include tests/CMakeFiles/testMultirobotFrameAlign.run.dir/progress.make

tests/CMakeFiles/testMultirobotFrameAlign.run: tests/testMultirobotFrameAlign
	cd /home/banafshe/catkin_ws/build/kimera_rpgo/tests && ./testMultirobotFrameAlign

testMultirobotFrameAlign.run: tests/CMakeFiles/testMultirobotFrameAlign.run
testMultirobotFrameAlign.run: tests/CMakeFiles/testMultirobotFrameAlign.run.dir/build.make

.PHONY : testMultirobotFrameAlign.run

# Rule to build all files generated by this target.
tests/CMakeFiles/testMultirobotFrameAlign.run.dir/build: testMultirobotFrameAlign.run

.PHONY : tests/CMakeFiles/testMultirobotFrameAlign.run.dir/build

tests/CMakeFiles/testMultirobotFrameAlign.run.dir/clean:
	cd /home/banafshe/catkin_ws/build/kimera_rpgo/tests && $(CMAKE_COMMAND) -P CMakeFiles/testMultirobotFrameAlign.run.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testMultirobotFrameAlign.run.dir/clean

tests/CMakeFiles/testMultirobotFrameAlign.run.dir/depend:
	cd /home/banafshe/catkin_ws/build/kimera_rpgo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/Kimera-RPGO /home/banafshe/catkin_ws/src/Kimera-RPGO/tests /home/banafshe/catkin_ws/build/kimera_rpgo /home/banafshe/catkin_ws/build/kimera_rpgo/tests /home/banafshe/catkin_ws/build/kimera_rpgo/tests/CMakeFiles/testMultirobotFrameAlign.run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testMultirobotFrameAlign.run.dir/depend

