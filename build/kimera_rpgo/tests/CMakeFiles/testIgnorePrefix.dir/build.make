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

# Include any dependencies generated for this target.
include tests/CMakeFiles/testIgnorePrefix.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/testIgnorePrefix.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/testIgnorePrefix.dir/flags.make

tests/CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.o: tests/CMakeFiles/testIgnorePrefix.dir/flags.make
tests/CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.o: /home/banafshe/catkin_ws/src/Kimera-RPGO/tests/testIgnorePrefix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/kimera_rpgo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.o"
	cd /home/banafshe/catkin_ws/build/kimera_rpgo/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/Kimera-RPGO\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.o -c /home/banafshe/catkin_ws/src/Kimera-RPGO/tests/testIgnorePrefix.cpp

tests/CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.i"
	cd /home/banafshe/catkin_ws/build/kimera_rpgo/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/Kimera-RPGO\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/Kimera-RPGO/tests/testIgnorePrefix.cpp > CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.i

tests/CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.s"
	cd /home/banafshe/catkin_ws/build/kimera_rpgo/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/Kimera-RPGO\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/Kimera-RPGO/tests/testIgnorePrefix.cpp -o CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.s

# Object files for target testIgnorePrefix
testIgnorePrefix_OBJECTS = \
"CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.o"

# External object files for target testIgnorePrefix
testIgnorePrefix_EXTERNAL_OBJECTS =

tests/testIgnorePrefix: tests/CMakeFiles/testIgnorePrefix.dir/testIgnorePrefix.cpp.o
tests/testIgnorePrefix: tests/CMakeFiles/testIgnorePrefix.dir/build.make
tests/testIgnorePrefix: /home/banafshe/catkin_ws/devel/lib/libCppUnitLite.a
tests/testIgnorePrefix: libKimeraRPGO.so
tests/testIgnorePrefix: /home/banafshe/catkin_ws/devel/lib/libgtsam_unstable.so.4.1.0
tests/testIgnorePrefix: /home/banafshe/catkin_ws/devel/lib/libgtsam.so.4.1.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_timer.so.1.71.0
tests/testIgnorePrefix: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
tests/testIgnorePrefix: /home/banafshe/catkin_ws/devel/lib/libmetis-gtsam.so
tests/testIgnorePrefix: tests/CMakeFiles/testIgnorePrefix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/kimera_rpgo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testIgnorePrefix"
	cd /home/banafshe/catkin_ws/build/kimera_rpgo/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testIgnorePrefix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/testIgnorePrefix.dir/build: tests/testIgnorePrefix

.PHONY : tests/CMakeFiles/testIgnorePrefix.dir/build

tests/CMakeFiles/testIgnorePrefix.dir/clean:
	cd /home/banafshe/catkin_ws/build/kimera_rpgo/tests && $(CMAKE_COMMAND) -P CMakeFiles/testIgnorePrefix.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testIgnorePrefix.dir/clean

tests/CMakeFiles/testIgnorePrefix.dir/depend:
	cd /home/banafshe/catkin_ws/build/kimera_rpgo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/Kimera-RPGO /home/banafshe/catkin_ws/src/Kimera-RPGO/tests /home/banafshe/catkin_ws/build/kimera_rpgo /home/banafshe/catkin_ws/build/kimera_rpgo/tests /home/banafshe/catkin_ws/build/kimera_rpgo/tests/CMakeFiles/testIgnorePrefix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testIgnorePrefix.dir/depend

