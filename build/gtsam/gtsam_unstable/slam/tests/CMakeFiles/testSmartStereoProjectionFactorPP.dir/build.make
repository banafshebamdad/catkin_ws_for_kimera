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
include gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/depend.make

# Include the progress variables for this target.
include gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/progress.make

# Include the compile flags for this target's objects.
include gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/flags.make

gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.o: gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/flags.make
gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.o: /home/banafshe/catkin_ws/src/gtsam/gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.o"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/slam/tests && /usr/bin/c++  $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.o -c /home/banafshe/catkin_ws/src/gtsam/gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP.cpp

gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.i"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/slam/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/banafshe/catkin_ws/src/gtsam/gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP.cpp > CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.i

gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.s"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/slam/tests && /usr/bin/c++ $(CXX_DEFINES) -DTOPSRCDIR=\"/home/banafshe/catkin_ws/src/gtsam\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/banafshe/catkin_ws/src/gtsam/gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP.cpp -o CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.s

# Object files for target testSmartStereoProjectionFactorPP
testSmartStereoProjectionFactorPP_OBJECTS = \
"CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.o"

# External object files for target testSmartStereoProjectionFactorPP
testSmartStereoProjectionFactorPP_EXTERNAL_OBJECTS =

gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/testSmartStereoProjectionFactorPP.cpp.o
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/build.make
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: CppUnitLite/libCppUnitLite.a
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: gtsam_unstable/libgtsam_unstable.so.4.1.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: gtsam/libgtsam.so.4.1.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_timer.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libtbb.so
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: /usr/lib/x86_64-linux-gnu/libtbbmalloc.so
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: gtsam/3rdparty/metis/libmetis/libmetis-gtsam.so
gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP: gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/banafshe/catkin_ws/build/gtsam/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testSmartStereoProjectionFactorPP"
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/slam/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testSmartStereoProjectionFactorPP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/build: gtsam_unstable/slam/tests/testSmartStereoProjectionFactorPP

.PHONY : gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/build

gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/clean:
	cd /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/slam/tests && $(CMAKE_COMMAND) -P CMakeFiles/testSmartStereoProjectionFactorPP.dir/cmake_clean.cmake
.PHONY : gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/clean

gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/depend:
	cd /home/banafshe/catkin_ws/build/gtsam && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/gtsam /home/banafshe/catkin_ws/src/gtsam/gtsam_unstable/slam/tests /home/banafshe/catkin_ws/build/gtsam /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/slam/tests /home/banafshe/catkin_ws/build/gtsam/gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtsam_unstable/slam/tests/CMakeFiles/testSmartStereoProjectionFactorPP.dir/depend

