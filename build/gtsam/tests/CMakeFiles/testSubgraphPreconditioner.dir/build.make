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

# Include any dependencies generated for this target.
include tests/CMakeFiles/testSubgraphPreconditioner.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/testSubgraphPreconditioner.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/testSubgraphPreconditioner.dir/flags.make

tests/CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.o: tests/CMakeFiles/testSubgraphPreconditioner.dir/flags.make
tests/CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.o: /home/banafshe/catkin_ws/src/gtsam/tests/testSubgraphPreconditioner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.o"
	cd /home/banafshe/catkin_ws/build/gtsam/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.o -c /home/banafshe/catkin_ws/src/gtsam/tests/testSubgraphPreconditioner.cpp

tests/CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.i"
	cd /home/banafshe/catkin_ws/build/gtsam/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/gtsam/tests/testSubgraphPreconditioner.cpp > CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.i

tests/CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.s"
	cd /home/banafshe/catkin_ws/build/gtsam/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/gtsam/tests/testSubgraphPreconditioner.cpp -o CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.s

# Object files for target testSubgraphPreconditioner
testSubgraphPreconditioner_OBJECTS = \
"CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.o"

# External object files for target testSubgraphPreconditioner
testSubgraphPreconditioner_EXTERNAL_OBJECTS =

tests/testSubgraphPreconditioner: tests/CMakeFiles/testSubgraphPreconditioner.dir/testSubgraphPreconditioner.cpp.o
tests/testSubgraphPreconditioner: tests/CMakeFiles/testSubgraphPreconditioner.dir/build.make
tests/testSubgraphPreconditioner: CppUnitLite/libCppUnitLite.a
tests/testSubgraphPreconditioner: gtsam/libgtsam.so.4.1.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_timer.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libtbb.so
tests/testSubgraphPreconditioner: /usr/lib/x86_64-linux-gnu/libtbbmalloc.so
tests/testSubgraphPreconditioner: gtsam/3rdparty/metis/libmetis/libmetis-gtsam.so
tests/testSubgraphPreconditioner: tests/CMakeFiles/testSubgraphPreconditioner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testSubgraphPreconditioner"
	cd /home/banafshe/catkin_ws/build/gtsam/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testSubgraphPreconditioner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/testSubgraphPreconditioner.dir/build: tests/testSubgraphPreconditioner

.PHONY : tests/CMakeFiles/testSubgraphPreconditioner.dir/build

tests/CMakeFiles/testSubgraphPreconditioner.dir/clean:
	cd /home/banafshe/catkin_ws/build/gtsam/tests && $(CMAKE_COMMAND) -P CMakeFiles/testSubgraphPreconditioner.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/testSubgraphPreconditioner.dir/clean

tests/CMakeFiles/testSubgraphPreconditioner.dir/depend:
	cd /home/banafshe/catkin_ws/build/gtsam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/gtsam /home/banafshe/catkin_ws/src/gtsam/tests /home/banafshe/catkin_ws/build/gtsam /home/banafshe/catkin_ws/build/gtsam/tests /home/banafshe/catkin_ws/build/gtsam/tests/CMakeFiles/testSubgraphPreconditioner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/testSubgraphPreconditioner.dir/depend
