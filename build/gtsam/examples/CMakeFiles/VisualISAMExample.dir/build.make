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
include examples/CMakeFiles/VisualISAMExample.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/VisualISAMExample.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/VisualISAMExample.dir/flags.make

examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o: examples/CMakeFiles/VisualISAMExample.dir/flags.make
examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o: /home/banafshe/catkin_ws/src/gtsam/examples/VisualISAMExample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o"
	cd /home/banafshe/catkin_ws/build/gtsam/examples && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o -c /home/banafshe/catkin_ws/src/gtsam/examples/VisualISAMExample.cpp

examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.i"
	cd /home/banafshe/catkin_ws/build/gtsam/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/gtsam/examples/VisualISAMExample.cpp > CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.i

examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.s"
	cd /home/banafshe/catkin_ws/build/gtsam/examples && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/gtsam/examples/VisualISAMExample.cpp -o CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.s

# Object files for target VisualISAMExample
VisualISAMExample_OBJECTS = \
"CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o"

# External object files for target VisualISAMExample
VisualISAMExample_EXTERNAL_OBJECTS =

examples/VisualISAMExample: examples/CMakeFiles/VisualISAMExample.dir/VisualISAMExample.cpp.o
examples/VisualISAMExample: examples/CMakeFiles/VisualISAMExample.dir/build.make
examples/VisualISAMExample: gtsam/libgtsam.so.4.1.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_timer.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libtbb.so
examples/VisualISAMExample: /usr/lib/x86_64-linux-gnu/libtbbmalloc.so
examples/VisualISAMExample: gtsam/3rdparty/metis/libmetis/libmetis-gtsam.so
examples/VisualISAMExample: examples/CMakeFiles/VisualISAMExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable VisualISAMExample"
	cd /home/banafshe/catkin_ws/build/gtsam/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VisualISAMExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/VisualISAMExample.dir/build: examples/VisualISAMExample

.PHONY : examples/CMakeFiles/VisualISAMExample.dir/build

examples/CMakeFiles/VisualISAMExample.dir/clean:
	cd /home/banafshe/catkin_ws/build/gtsam/examples && $(CMAKE_COMMAND) -P CMakeFiles/VisualISAMExample.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/VisualISAMExample.dir/clean

examples/CMakeFiles/VisualISAMExample.dir/depend:
	cd /home/banafshe/catkin_ws/build/gtsam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/gtsam /home/banafshe/catkin_ws/src/gtsam/examples /home/banafshe/catkin_ws/build/gtsam /home/banafshe/catkin_ws/build/gtsam/examples /home/banafshe/catkin_ws/build/gtsam/examples/CMakeFiles/VisualISAMExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/VisualISAMExample.dir/depend

