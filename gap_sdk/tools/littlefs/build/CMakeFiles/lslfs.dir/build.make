# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/osboxes/gap_sdk/tools/littlefs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/osboxes/gap_sdk/tools/littlefs/build

# Include any dependencies generated for this target.
include CMakeFiles/lslfs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lslfs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lslfs.dir/flags.make

CMakeFiles/lslfs.dir/lfs/lfs.c.o: CMakeFiles/lslfs.dir/flags.make
CMakeFiles/lslfs.dir/lfs/lfs.c.o: ../lfs/lfs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/gap_sdk/tools/littlefs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lslfs.dir/lfs/lfs.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lslfs.dir/lfs/lfs.c.o   -c /home/osboxes/gap_sdk/tools/littlefs/lfs/lfs.c

CMakeFiles/lslfs.dir/lfs/lfs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lslfs.dir/lfs/lfs.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/osboxes/gap_sdk/tools/littlefs/lfs/lfs.c > CMakeFiles/lslfs.dir/lfs/lfs.c.i

CMakeFiles/lslfs.dir/lfs/lfs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lslfs.dir/lfs/lfs.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/osboxes/gap_sdk/tools/littlefs/lfs/lfs.c -o CMakeFiles/lslfs.dir/lfs/lfs.c.s

CMakeFiles/lslfs.dir/lfs/lfs.c.o.requires:

.PHONY : CMakeFiles/lslfs.dir/lfs/lfs.c.o.requires

CMakeFiles/lslfs.dir/lfs/lfs.c.o.provides: CMakeFiles/lslfs.dir/lfs/lfs.c.o.requires
	$(MAKE) -f CMakeFiles/lslfs.dir/build.make CMakeFiles/lslfs.dir/lfs/lfs.c.o.provides.build
.PHONY : CMakeFiles/lslfs.dir/lfs/lfs.c.o.provides

CMakeFiles/lslfs.dir/lfs/lfs.c.o.provides.build: CMakeFiles/lslfs.dir/lfs/lfs.c.o


CMakeFiles/lslfs.dir/lfs/lfs_util.c.o: CMakeFiles/lslfs.dir/flags.make
CMakeFiles/lslfs.dir/lfs/lfs_util.c.o: ../lfs/lfs_util.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/gap_sdk/tools/littlefs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/lslfs.dir/lfs/lfs_util.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lslfs.dir/lfs/lfs_util.c.o   -c /home/osboxes/gap_sdk/tools/littlefs/lfs/lfs_util.c

CMakeFiles/lslfs.dir/lfs/lfs_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lslfs.dir/lfs/lfs_util.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/osboxes/gap_sdk/tools/littlefs/lfs/lfs_util.c > CMakeFiles/lslfs.dir/lfs/lfs_util.c.i

CMakeFiles/lslfs.dir/lfs/lfs_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lslfs.dir/lfs/lfs_util.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/osboxes/gap_sdk/tools/littlefs/lfs/lfs_util.c -o CMakeFiles/lslfs.dir/lfs/lfs_util.c.s

CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.requires:

.PHONY : CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.requires

CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.provides: CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.requires
	$(MAKE) -f CMakeFiles/lslfs.dir/build.make CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.provides.build
.PHONY : CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.provides

CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.provides.build: CMakeFiles/lslfs.dir/lfs/lfs_util.c.o


CMakeFiles/lslfs.dir/lslfs.c.o: CMakeFiles/lslfs.dir/flags.make
CMakeFiles/lslfs.dir/lslfs.c.o: ../lslfs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/gap_sdk/tools/littlefs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/lslfs.dir/lslfs.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lslfs.dir/lslfs.c.o   -c /home/osboxes/gap_sdk/tools/littlefs/lslfs.c

CMakeFiles/lslfs.dir/lslfs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lslfs.dir/lslfs.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/osboxes/gap_sdk/tools/littlefs/lslfs.c > CMakeFiles/lslfs.dir/lslfs.c.i

CMakeFiles/lslfs.dir/lslfs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lslfs.dir/lslfs.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/osboxes/gap_sdk/tools/littlefs/lslfs.c -o CMakeFiles/lslfs.dir/lslfs.c.s

CMakeFiles/lslfs.dir/lslfs.c.o.requires:

.PHONY : CMakeFiles/lslfs.dir/lslfs.c.o.requires

CMakeFiles/lslfs.dir/lslfs.c.o.provides: CMakeFiles/lslfs.dir/lslfs.c.o.requires
	$(MAKE) -f CMakeFiles/lslfs.dir/build.make CMakeFiles/lslfs.dir/lslfs.c.o.provides.build
.PHONY : CMakeFiles/lslfs.dir/lslfs.c.o.provides

CMakeFiles/lslfs.dir/lslfs.c.o.provides.build: CMakeFiles/lslfs.dir/lslfs.c.o


# Object files for target lslfs
lslfs_OBJECTS = \
"CMakeFiles/lslfs.dir/lfs/lfs.c.o" \
"CMakeFiles/lslfs.dir/lfs/lfs_util.c.o" \
"CMakeFiles/lslfs.dir/lslfs.c.o"

# External object files for target lslfs
lslfs_EXTERNAL_OBJECTS =

lslfs: CMakeFiles/lslfs.dir/lfs/lfs.c.o
lslfs: CMakeFiles/lslfs.dir/lfs/lfs_util.c.o
lslfs: CMakeFiles/lslfs.dir/lslfs.c.o
lslfs: CMakeFiles/lslfs.dir/build.make
lslfs: CMakeFiles/lslfs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/osboxes/gap_sdk/tools/littlefs/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable lslfs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lslfs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lslfs.dir/build: lslfs

.PHONY : CMakeFiles/lslfs.dir/build

CMakeFiles/lslfs.dir/requires: CMakeFiles/lslfs.dir/lfs/lfs.c.o.requires
CMakeFiles/lslfs.dir/requires: CMakeFiles/lslfs.dir/lfs/lfs_util.c.o.requires
CMakeFiles/lslfs.dir/requires: CMakeFiles/lslfs.dir/lslfs.c.o.requires

.PHONY : CMakeFiles/lslfs.dir/requires

CMakeFiles/lslfs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lslfs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lslfs.dir/clean

CMakeFiles/lslfs.dir/depend:
	cd /home/osboxes/gap_sdk/tools/littlefs/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/osboxes/gap_sdk/tools/littlefs /home/osboxes/gap_sdk/tools/littlefs /home/osboxes/gap_sdk/tools/littlefs/build /home/osboxes/gap_sdk/tools/littlefs/build /home/osboxes/gap_sdk/tools/littlefs/build/CMakeFiles/lslfs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lslfs.dir/depend

