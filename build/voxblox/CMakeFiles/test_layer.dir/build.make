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
CMAKE_SOURCE_DIR = /home/banafshe/catkin_ws/src/voxblox/voxblox

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/banafshe/catkin_ws/build/voxblox

# Include any dependencies generated for this target.
include CMakeFiles/test_layer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_layer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_layer.dir/flags.make

CMakeFiles/test_layer.dir/test/test_layer.cc.o: CMakeFiles/test_layer.dir/flags.make
CMakeFiles/test_layer.dir/test/test_layer.cc.o: /home/banafshe/catkin_ws/src/voxblox/voxblox/test/test_layer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/voxblox/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_layer.dir/test/test_layer.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_layer.dir/test/test_layer.cc.o -c /home/banafshe/catkin_ws/src/voxblox/voxblox/test/test_layer.cc

CMakeFiles/test_layer.dir/test/test_layer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_layer.dir/test/test_layer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/voxblox/voxblox/test/test_layer.cc > CMakeFiles/test_layer.dir/test/test_layer.cc.i

CMakeFiles/test_layer.dir/test/test_layer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_layer.dir/test/test_layer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/voxblox/voxblox/test/test_layer.cc -o CMakeFiles/test_layer.dir/test/test_layer.cc.s

# Object files for target test_layer
test_layer_OBJECTS = \
"CMakeFiles/test_layer.dir/test/test_layer.cc.o"

# External object files for target test_layer
test_layer_EXTERNAL_OBJECTS =

/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: CMakeFiles/test_layer.dir/test/test_layer.cc.o
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: CMakeFiles/test_layer.dir/build.make
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: gtest/lib/libgtest.so
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: /home/banafshe/catkin_ws/devel/lib/libvoxblox.so
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: /home/banafshe/catkin_ws/devel/lib/libvoxblox_proto.so
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: /home/banafshe/catkin_ws/devel/lib/libeigen_checks.so
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: /usr/lib/x86_64-linux-gnu/libglog.so
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: /home/banafshe/catkin_ws/devel/lib/libgflags.so
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: /usr/lib/x86_64-linux-gnu/libprotobuf.so
/home/banafshe/catkin_ws/devel/lib/voxblox/test_layer: CMakeFiles/test_layer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/voxblox/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/banafshe/catkin_ws/devel/lib/voxblox/test_layer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_layer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_layer.dir/build: /home/banafshe/catkin_ws/devel/lib/voxblox/test_layer

.PHONY : CMakeFiles/test_layer.dir/build

CMakeFiles/test_layer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_layer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_layer.dir/clean

CMakeFiles/test_layer.dir/depend:
	cd /home/banafshe/catkin_ws/build/voxblox && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/voxblox/voxblox /home/banafshe/catkin_ws/src/voxblox/voxblox /home/banafshe/catkin_ws/build/voxblox /home/banafshe/catkin_ws/build/voxblox /home/banafshe/catkin_ws/build/voxblox/CMakeFiles/test_layer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_layer.dir/depend

