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
CMAKE_SOURCE_DIR = /home/banafshe/catkin_ws/src/opengv_catkin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/banafshe/catkin_ws/build/opengv_catkin

# Utility rule file for opengv_src.

# Include the progress variables for this target.
include CMakeFiles/opengv_src.dir/progress.make

CMakeFiles/opengv_src: CMakeFiles/opengv_src-complete


CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-install
CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-mkdir
CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-download
CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-update
CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-patch
CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-configure
CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-build
CMakeFiles/opengv_src-complete: opengv_src-prefix/src/opengv_src-stamp/opengv_src-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'opengv_src'"
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles
	/usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles/opengv_src-complete
	/usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-done

opengv_src-prefix/src/opengv_src-stamp/opengv_src-install: opengv_src-prefix/src/opengv_src-stamp/opengv_src-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'opengv_src'"
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-build && cd ../opengv_src && make install
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-build && /usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-install

opengv_src-prefix/src/opengv_src-stamp/opengv_src-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'opengv_src'"
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-build
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/tmp
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src
	/usr/bin/cmake -E make_directory /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp
	/usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-mkdir

opengv_src-prefix/src/opengv_src-stamp/opengv_src-download: opengv_src-prefix/src/opengv_src-stamp/opengv_src-gitinfo.txt
opengv_src-prefix/src/opengv_src-stamp/opengv_src-download: opengv_src-prefix/src/opengv_src-stamp/opengv_src-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'opengv_src'"
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src && /usr/bin/cmake -P /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/tmp/opengv_src-gitclone.cmake
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src && /usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-download

opengv_src-prefix/src/opengv_src-stamp/opengv_src-update: opengv_src-prefix/src/opengv_src-stamp/opengv_src-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'opengv_src'"
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src && /usr/bin/cmake -E echo_append
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src && /usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-update

opengv_src-prefix/src/opengv_src-stamp/opengv_src-patch: opengv_src-prefix/src/opengv_src-stamp/opengv_src-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'opengv_src'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-patch

opengv_src-prefix/src/opengv_src-stamp/opengv_src-configure: opengv_src-prefix/tmp/opengv_src-cfgcmd.txt
opengv_src-prefix/src/opengv_src-stamp/opengv_src-configure: opengv_src-prefix/src/opengv_src-stamp/opengv_src-update
opengv_src-prefix/src/opengv_src-stamp/opengv_src-configure: opengv_src-prefix/src/opengv_src-stamp/opengv_src-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'opengv_src'"
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-build && cd ../opengv_src && cmake . -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/home/banafshe/catkin_ws/devel
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-build && /usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-configure

opengv_src-prefix/src/opengv_src-stamp/opengv_src-build: opengv_src-prefix/src/opengv_src-stamp/opengv_src-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'opengv_src'"
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-build && cd ../opengv_src && make -j 8
	cd /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-build && /usr/bin/cmake -E touch /home/banafshe/catkin_ws/build/opengv_catkin/opengv_src-prefix/src/opengv_src-stamp/opengv_src-build

opengv_src: CMakeFiles/opengv_src
opengv_src: CMakeFiles/opengv_src-complete
opengv_src: opengv_src-prefix/src/opengv_src-stamp/opengv_src-install
opengv_src: opengv_src-prefix/src/opengv_src-stamp/opengv_src-mkdir
opengv_src: opengv_src-prefix/src/opengv_src-stamp/opengv_src-download
opengv_src: opengv_src-prefix/src/opengv_src-stamp/opengv_src-update
opengv_src: opengv_src-prefix/src/opengv_src-stamp/opengv_src-patch
opengv_src: opengv_src-prefix/src/opengv_src-stamp/opengv_src-configure
opengv_src: opengv_src-prefix/src/opengv_src-stamp/opengv_src-build
opengv_src: CMakeFiles/opengv_src.dir/build.make

.PHONY : opengv_src

# Rule to build all files generated by this target.
CMakeFiles/opengv_src.dir/build: opengv_src

.PHONY : CMakeFiles/opengv_src.dir/build

CMakeFiles/opengv_src.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opengv_src.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opengv_src.dir/clean

CMakeFiles/opengv_src.dir/depend:
	cd /home/banafshe/catkin_ws/build/opengv_catkin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/banafshe/catkin_ws/src/opengv_catkin /home/banafshe/catkin_ws/src/opengv_catkin /home/banafshe/catkin_ws/build/opengv_catkin /home/banafshe/catkin_ws/build/opengv_catkin /home/banafshe/catkin_ws/build/opengv_catkin/CMakeFiles/opengv_src.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opengv_src.dir/depend

