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
CMAKE_SOURCE_DIR = /tmp/05_Entfernungsmesser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/05_Entfernungsmesser/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/05_Entfernungsmesser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/05_Entfernungsmesser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/05_Entfernungsmesser.dir/flags.make

CMakeFiles/05_Entfernungsmesser.dir/main.c.o: CMakeFiles/05_Entfernungsmesser.dir/flags.make
CMakeFiles/05_Entfernungsmesser.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/05_Entfernungsmesser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/05_Entfernungsmesser.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/05_Entfernungsmesser.dir/main.c.o   -c /tmp/05_Entfernungsmesser/main.c

CMakeFiles/05_Entfernungsmesser.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/05_Entfernungsmesser.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/05_Entfernungsmesser/main.c > CMakeFiles/05_Entfernungsmesser.dir/main.c.i

CMakeFiles/05_Entfernungsmesser.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/05_Entfernungsmesser.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/05_Entfernungsmesser/main.c -o CMakeFiles/05_Entfernungsmesser.dir/main.c.s

# Object files for target 05_Entfernungsmesser
05_Entfernungsmesser_OBJECTS = \
"CMakeFiles/05_Entfernungsmesser.dir/main.c.o"

# External object files for target 05_Entfernungsmesser
05_Entfernungsmesser_EXTERNAL_OBJECTS =

05_Entfernungsmesser: CMakeFiles/05_Entfernungsmesser.dir/main.c.o
05_Entfernungsmesser: CMakeFiles/05_Entfernungsmesser.dir/build.make
05_Entfernungsmesser: CMakeFiles/05_Entfernungsmesser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/05_Entfernungsmesser/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 05_Entfernungsmesser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/05_Entfernungsmesser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/05_Entfernungsmesser.dir/build: 05_Entfernungsmesser

.PHONY : CMakeFiles/05_Entfernungsmesser.dir/build

CMakeFiles/05_Entfernungsmesser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/05_Entfernungsmesser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/05_Entfernungsmesser.dir/clean

CMakeFiles/05_Entfernungsmesser.dir/depend:
	cd /tmp/05_Entfernungsmesser/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/05_Entfernungsmesser /tmp/05_Entfernungsmesser /tmp/05_Entfernungsmesser/cmake-build-debug /tmp/05_Entfernungsmesser/cmake-build-debug /tmp/05_Entfernungsmesser/cmake-build-debug/CMakeFiles/05_Entfernungsmesser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/05_Entfernungsmesser.dir/depend

