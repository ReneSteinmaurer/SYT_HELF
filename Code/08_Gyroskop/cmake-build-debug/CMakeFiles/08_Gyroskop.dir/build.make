# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /tmp/tmp.1pDCx88edd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.1pDCx88edd/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/08_Gyroskop.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/08_Gyroskop.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/08_Gyroskop.dir/flags.make

CMakeFiles/08_Gyroskop.dir/main.c.o: CMakeFiles/08_Gyroskop.dir/flags.make
CMakeFiles/08_Gyroskop.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.1pDCx88edd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/08_Gyroskop.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/08_Gyroskop.dir/main.c.o   -c /tmp/tmp.1pDCx88edd/main.c

CMakeFiles/08_Gyroskop.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/08_Gyroskop.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.1pDCx88edd/main.c > CMakeFiles/08_Gyroskop.dir/main.c.i

CMakeFiles/08_Gyroskop.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/08_Gyroskop.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.1pDCx88edd/main.c -o CMakeFiles/08_Gyroskop.dir/main.c.s

# Object files for target 08_Gyroskop
08_Gyroskop_OBJECTS = \
"CMakeFiles/08_Gyroskop.dir/main.c.o"

# External object files for target 08_Gyroskop
08_Gyroskop_EXTERNAL_OBJECTS =

08_Gyroskop: CMakeFiles/08_Gyroskop.dir/main.c.o
08_Gyroskop: CMakeFiles/08_Gyroskop.dir/build.make
08_Gyroskop: CMakeFiles/08_Gyroskop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.1pDCx88edd/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 08_Gyroskop"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/08_Gyroskop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/08_Gyroskop.dir/build: 08_Gyroskop

.PHONY : CMakeFiles/08_Gyroskop.dir/build

CMakeFiles/08_Gyroskop.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/08_Gyroskop.dir/cmake_clean.cmake
.PHONY : CMakeFiles/08_Gyroskop.dir/clean

CMakeFiles/08_Gyroskop.dir/depend:
	cd /tmp/tmp.1pDCx88edd/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.1pDCx88edd /tmp/tmp.1pDCx88edd /tmp/tmp.1pDCx88edd/cmake-build-debug /tmp/tmp.1pDCx88edd/cmake-build-debug /tmp/tmp.1pDCx88edd/cmake-build-debug/CMakeFiles/08_Gyroskop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/08_Gyroskop.dir/depend

