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
CMAKE_SOURCE_DIR = /tmp/tmp.pymFjj2mEs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.pymFjj2mEs/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/10_DC_Motor.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/10_DC_Motor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/10_DC_Motor.dir/flags.make

CMakeFiles/10_DC_Motor.dir/main.c.o: CMakeFiles/10_DC_Motor.dir/flags.make
CMakeFiles/10_DC_Motor.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.pymFjj2mEs/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/10_DC_Motor.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/10_DC_Motor.dir/main.c.o   -c /tmp/tmp.pymFjj2mEs/main.c

CMakeFiles/10_DC_Motor.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/10_DC_Motor.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.pymFjj2mEs/main.c > CMakeFiles/10_DC_Motor.dir/main.c.i

CMakeFiles/10_DC_Motor.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/10_DC_Motor.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.pymFjj2mEs/main.c -o CMakeFiles/10_DC_Motor.dir/main.c.s

# Object files for target 10_DC_Motor
10_DC_Motor_OBJECTS = \
"CMakeFiles/10_DC_Motor.dir/main.c.o"

# External object files for target 10_DC_Motor
10_DC_Motor_EXTERNAL_OBJECTS =

10_DC_Motor: CMakeFiles/10_DC_Motor.dir/main.c.o
10_DC_Motor: CMakeFiles/10_DC_Motor.dir/build.make
10_DC_Motor: CMakeFiles/10_DC_Motor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.pymFjj2mEs/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 10_DC_Motor"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/10_DC_Motor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/10_DC_Motor.dir/build: 10_DC_Motor

.PHONY : CMakeFiles/10_DC_Motor.dir/build

CMakeFiles/10_DC_Motor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/10_DC_Motor.dir/cmake_clean.cmake
.PHONY : CMakeFiles/10_DC_Motor.dir/clean

CMakeFiles/10_DC_Motor.dir/depend:
	cd /tmp/tmp.pymFjj2mEs/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.pymFjj2mEs /tmp/tmp.pymFjj2mEs /tmp/tmp.pymFjj2mEs/cmake-build-debug /tmp/tmp.pymFjj2mEs/cmake-build-debug /tmp/tmp.pymFjj2mEs/cmake-build-debug/CMakeFiles/10_DC_Motor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/10_DC_Motor.dir/depend

