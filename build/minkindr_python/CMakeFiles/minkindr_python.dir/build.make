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
CMAKE_SOURCE_DIR = /home/banafshe/catkin_ws/src/minkindr/minkindr_python

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/banafshe/catkin_ws/build/minkindr_python

# Include any dependencies generated for this target.
include CMakeFiles/minkindr_python.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/minkindr_python.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/minkindr_python.dir/flags.make

CMakeFiles/minkindr_python.dir/src/module.cpp.o: CMakeFiles/minkindr_python.dir/flags.make
CMakeFiles/minkindr_python.dir/src/module.cpp.o: /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/module.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/minkindr_python/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/minkindr_python.dir/src/module.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/minkindr_python.dir/src/module.cpp.o -c /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/module.cpp

CMakeFiles/minkindr_python.dir/src/module.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minkindr_python.dir/src/module.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/module.cpp > CMakeFiles/minkindr_python.dir/src/module.cpp.i

CMakeFiles/minkindr_python.dir/src/module.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minkindr_python.dir/src/module.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/module.cpp -o CMakeFiles/minkindr_python.dir/src/module.cpp.s

CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.o: CMakeFiles/minkindr_python.dir/flags.make
CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.o: /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-rotation-quaternion.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/minkindr_python/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.o -c /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-rotation-quaternion.cc

CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-rotation-quaternion.cc > CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.i

CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-rotation-quaternion.cc -o CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.s

CMakeFiles/minkindr_python.dir/src/export-transformation.cc.o: CMakeFiles/minkindr_python.dir/flags.make
CMakeFiles/minkindr_python.dir/src/export-transformation.cc.o: /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-transformation.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/minkindr_python/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/minkindr_python.dir/src/export-transformation.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/minkindr_python.dir/src/export-transformation.cc.o -c /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-transformation.cc

CMakeFiles/minkindr_python.dir/src/export-transformation.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minkindr_python.dir/src/export-transformation.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-transformation.cc > CMakeFiles/minkindr_python.dir/src/export-transformation.cc.i

CMakeFiles/minkindr_python.dir/src/export-transformation.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minkindr_python.dir/src/export-transformation.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/minkindr/minkindr_python/src/export-transformation.cc -o CMakeFiles/minkindr_python.dir/src/export-transformation.cc.s

# Object files for target minkindr_python
minkindr_python_OBJECTS = \
"CMakeFiles/minkindr_python.dir/src/module.cpp.o" \
"CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.o" \
"CMakeFiles/minkindr_python.dir/src/export-transformation.cc.o"

# External object files for target minkindr_python
minkindr_python_EXTERNAL_OBJECTS =

/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: CMakeFiles/minkindr_python.dir/src/module.cpp.o
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: CMakeFiles/minkindr_python.dir/src/export-rotation-quaternion.cc.o
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: CMakeFiles/minkindr_python.dir/src/export-transformation.cc.o
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: CMakeFiles/minkindr_python.dir/build.make
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: /usr/lib/x86_64-linux-gnu/libglog.so
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: /home/banafshe/catkin_ws/devel/lib/libgflags.so
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: /usr/lib/x86_64-linux-gnu/libboost_python38.so.1.71.0
/home/banafshe/catkin_ws/devel/lib/libminkindr_python.so: CMakeFiles/minkindr_python.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/minkindr_python/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library /home/banafshe/catkin_ws/devel/lib/libminkindr_python.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minkindr_python.dir/link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Copying library files to python directory"
	cd /home/banafshe/catkin_ws/devel && mkdir -p /home/banafshe/catkin_ws/devel/lib/python3/dist-packages/minkindr && cp -v /home/banafshe/catkin_ws/devel/lib/libminkindr_python.so /home/banafshe/catkin_ws/devel/lib/python3/dist-packages/minkindr/libminkindr_python.so

# Rule to build all files generated by this target.
CMakeFiles/minkindr_python.dir/build: /home/banafshe/catkin_ws/devel/lib/libminkindr_python.so

.PHONY : CMakeFiles/minkindr_python.dir/build

CMakeFiles/minkindr_python.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/minkindr_python.dir/cmake_clean.cmake
.PHONY : CMakeFiles/minkindr_python.dir/clean

CMakeFiles/minkindr_python.dir/depend:
	cd /home/banafshe/catkin_ws/build/minkindr_python && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/minkindr/minkindr_python /home/banafshe/catkin_ws/src/minkindr/minkindr_python /home/banafshe/catkin_ws/build/minkindr_python /home/banafshe/catkin_ws/build/minkindr_python /home/banafshe/catkin_ws/build/minkindr_python/CMakeFiles/minkindr_python.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/minkindr_python.dir/depend

