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
CMAKE_SOURCE_DIR = /tmp/tmp.588IyuHi8d

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.588IyuHi8d/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/02_Uebung.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/02_Uebung.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/02_Uebung.dir/flags.make

CMakeFiles/02_Uebung.dir/main.c.o: CMakeFiles/02_Uebung.dir/flags.make
CMakeFiles/02_Uebung.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.588IyuHi8d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/02_Uebung.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/02_Uebung.dir/main.c.o   -c /tmp/tmp.588IyuHi8d/main.c

CMakeFiles/02_Uebung.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/02_Uebung.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /tmp/tmp.588IyuHi8d/main.c > CMakeFiles/02_Uebung.dir/main.c.i

CMakeFiles/02_Uebung.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/02_Uebung.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /tmp/tmp.588IyuHi8d/main.c -o CMakeFiles/02_Uebung.dir/main.c.s

# Object files for target 02_Uebung
02_Uebung_OBJECTS = \
"CMakeFiles/02_Uebung.dir/main.c.o"

# External object files for target 02_Uebung
02_Uebung_EXTERNAL_OBJECTS =

02_Uebung: CMakeFiles/02_Uebung.dir/main.c.o
02_Uebung: CMakeFiles/02_Uebung.dir/build.make
02_Uebung: CMakeFiles/02_Uebung.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.588IyuHi8d/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable 02_Uebung"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/02_Uebung.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/02_Uebung.dir/build: 02_Uebung

.PHONY : CMakeFiles/02_Uebung.dir/build

CMakeFiles/02_Uebung.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/02_Uebung.dir/cmake_clean.cmake
.PHONY : CMakeFiles/02_Uebung.dir/clean

CMakeFiles/02_Uebung.dir/depend:
	cd /tmp/tmp.588IyuHi8d/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.588IyuHi8d /tmp/tmp.588IyuHi8d /tmp/tmp.588IyuHi8d/cmake-build-debug /tmp/tmp.588IyuHi8d/cmake-build-debug /tmp/tmp.588IyuHi8d/cmake-build-debug/CMakeFiles/02_Uebung.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/02_Uebung.dir/depend

