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

# Utility rule file for testSudoku.valgrind.

# Include the progress variables for this target.
include gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/progress.make

gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind: gtsam_unstable/discrete/tests/testSudoku
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/discrete/tests && valgrind --error-exitcode=1 /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/discrete/tests/testSudoku

testSudoku.valgrind: gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind
testSudoku.valgrind: gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/build.make

.PHONY : testSudoku.valgrind

# Rule to build all files generated by this target.
gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/build: testSudoku.valgrind

.PHONY : gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/build

gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/clean:
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/discrete/tests && $(CMAKE_COMMAND) -P CMakeFiles/testSudoku.valgrind.dir/cmake_clean.cmake
.PHONY : gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/clean

gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/depend:
	cd /home/banafshe/catkin_ws/build/gtsam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/gtsam /home/banafshe/catkin_ws/src/gtsam/gtsam_unstable/discrete/tests /home/banafshe/catkin_ws/build/gtsam /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/discrete/tests /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtsam_unstable/discrete/tests/CMakeFiles/testSudoku.valgrind.dir/depend

