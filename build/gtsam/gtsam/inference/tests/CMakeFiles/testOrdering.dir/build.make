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
include gtsam/inference/tests/CMakeFiles/testOrdering.dir/depend.make

# Include the progress variables for this target.
include gtsam/inference/tests/CMakeFiles/testOrdering.dir/progress.make

# Include the compile flags for this target's objects.
include gtsam/inference/tests/CMakeFiles/testOrdering.dir/flags.make

gtsam/inference/tests/CMakeFiles/testOrdering.dir/testOrdering.cpp.o: gtsam/inference/tests/CMakeFiles/testOrdering.dir/flags.make
gtsam/inference/tests/CMakeFiles/testOrdering.dir/testOrdering.cpp.o: /home/banafshe/catkin_ws/src/gtsam/gtsam/inference/tests/testOrdering.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtsam/inference/tests/CMakeFiles/testOrdering.dir/testOrdering.cpp.o"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/inference/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testOrdering.dir/testOrdering.cpp.o -c /home/banafshe/catkin_ws/src/gtsam/gtsam/inference/tests/testOrdering.cpp

gtsam/inference/tests/CMakeFiles/testOrdering.dir/testOrdering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testOrdering.dir/testOrdering.cpp.i"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/inference/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/gtsam/gtsam/inference/tests/testOrdering.cpp > CMakeFiles/testOrdering.dir/testOrdering.cpp.i

gtsam/inference/tests/CMakeFiles/testOrdering.dir/testOrdering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testOrdering.dir/testOrdering.cpp.s"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/inference/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/gtsam/gtsam/inference/tests/testOrdering.cpp -o CMakeFiles/testOrdering.dir/testOrdering.cpp.s

# Object files for target testOrdering
testOrdering_OBJECTS = \
"CMakeFiles/testOrdering.dir/testOrdering.cpp.o"

# External object files for target testOrdering
testOrdering_EXTERNAL_OBJECTS =

gtsam/inference/tests/testOrdering: gtsam/inference/tests/CMakeFiles/testOrdering.dir/testOrdering.cpp.o
gtsam/inference/tests/testOrdering: gtsam/inference/tests/CMakeFiles/testOrdering.dir/build.make
gtsam/inference/tests/testOrdering: CppUnitLite/libCppUnitLite.a
gtsam/inference/tests/testOrdering: gtsam/libgtsam.so.4.1.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_timer.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libtbb.so
gtsam/inference/tests/testOrdering: /usr/lib/x86_64-linux-gnu/libtbbmalloc.so
gtsam/inference/tests/testOrdering: gtsam/3rdparty/metis/libmetis/libmetis-gtsam.so
gtsam/inference/tests/testOrdering: gtsam/inference/tests/CMakeFiles/testOrdering.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testOrdering"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/inference/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testOrdering.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gtsam/inference/tests/CMakeFiles/testOrdering.dir/build: gtsam/inference/tests/testOrdering

.PHONY : gtsam/inference/tests/CMakeFiles/testOrdering.dir/build

gtsam/inference/tests/CMakeFiles/testOrdering.dir/clean:
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/inference/tests && $(CMAKE_COMMAND) -P CMakeFiles/testOrdering.dir/cmake_clean.cmake
.PHONY : gtsam/inference/tests/CMakeFiles/testOrdering.dir/clean

gtsam/inference/tests/CMakeFiles/testOrdering.dir/depend:
	cd /home/banafshe/catkin_ws/build/gtsam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/gtsam /home/banafshe/catkin_ws/src/gtsam/gtsam/inference/tests /home/banafshe/catkin_ws/build/gtsam /home/banafshe/catkin_ws/build/gtsam/gtsam/inference/tests /home/banafshe/catkin_ws/build/gtsam/gtsam/inference/tests/CMakeFiles/testOrdering.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtsam/inference/tests/CMakeFiles/testOrdering.dir/depend

