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
include gtsam/base/tests/CMakeFiles/testDebug.dir/depend.make

# Include the progress variables for this target.
include gtsam/base/tests/CMakeFiles/testDebug.dir/progress.make

# Include the compile flags for this target's objects.
include gtsam/base/tests/CMakeFiles/testDebug.dir/flags.make

gtsam/base/tests/CMakeFiles/testDebug.dir/testDebug.cpp.o: gtsam/base/tests/CMakeFiles/testDebug.dir/flags.make
gtsam/base/tests/CMakeFiles/testDebug.dir/testDebug.cpp.o: /home/banafshe/catkin_ws/src/gtsam/gtsam/base/tests/testDebug.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtsam/base/tests/CMakeFiles/testDebug.dir/testDebug.cpp.o"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/base/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testDebug.dir/testDebug.cpp.o -c /home/banafshe/catkin_ws/src/gtsam/gtsam/base/tests/testDebug.cpp

gtsam/base/tests/CMakeFiles/testDebug.dir/testDebug.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testDebug.dir/testDebug.cpp.i"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/base/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/gtsam/gtsam/base/tests/testDebug.cpp > CMakeFiles/testDebug.dir/testDebug.cpp.i

gtsam/base/tests/CMakeFiles/testDebug.dir/testDebug.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testDebug.dir/testDebug.cpp.s"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/base/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/gtsam/gtsam/base/tests/testDebug.cpp -o CMakeFiles/testDebug.dir/testDebug.cpp.s

# Object files for target testDebug
testDebug_OBJECTS = \
"CMakeFiles/testDebug.dir/testDebug.cpp.o"

# External object files for target testDebug
testDebug_EXTERNAL_OBJECTS =

gtsam/base/tests/testDebug: gtsam/base/tests/CMakeFiles/testDebug.dir/testDebug.cpp.o
gtsam/base/tests/testDebug: gtsam/base/tests/CMakeFiles/testDebug.dir/build.make
gtsam/base/tests/testDebug: CppUnitLite/libCppUnitLite.a
gtsam/base/tests/testDebug: gtsam/libgtsam.so.4.1.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_timer.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libtbb.so
gtsam/base/tests/testDebug: /usr/lib/x86_64-linux-gnu/libtbbmalloc.so
gtsam/base/tests/testDebug: gtsam/3rdparty/metis/libmetis/libmetis-gtsam.so
gtsam/base/tests/testDebug: gtsam/base/tests/CMakeFiles/testDebug.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testDebug"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/base/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testDebug.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gtsam/base/tests/CMakeFiles/testDebug.dir/build: gtsam/base/tests/testDebug

.PHONY : gtsam/base/tests/CMakeFiles/testDebug.dir/build

gtsam/base/tests/CMakeFiles/testDebug.dir/clean:
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam/base/tests && $(CMAKE_COMMAND) -P CMakeFiles/testDebug.dir/cmake_clean.cmake
.PHONY : gtsam/base/tests/CMakeFiles/testDebug.dir/clean

gtsam/base/tests/CMakeFiles/testDebug.dir/depend:
	cd /home/banafshe/catkin_ws/build/gtsam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/gtsam /home/banafshe/catkin_ws/src/gtsam/gtsam/base/tests /home/banafshe/catkin_ws/build/gtsam /home/banafshe/catkin_ws/build/gtsam/gtsam/base/tests /home/banafshe/catkin_ws/build/gtsam/gtsam/base/tests/CMakeFiles/testDebug.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtsam/base/tests/CMakeFiles/testDebug.dir/depend

