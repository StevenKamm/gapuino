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
CMAKE_SOURCE_DIR = /home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build

# Utility rule file for gen.pulpissimo-riscy.

# Include the progress variables for this target.
include CMakeFiles/gen.pulpissimo-riscy.dir/progress.make

CMakeFiles/gen.pulpissimo-riscy: systems/pulpissimo-riscy.json


systems/pulpissimo-riscy.json: /home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs/bin/pulp_config_gen
systems/pulpissimo-riscy.json: jtag-cam
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating systems/pulpissimo-riscy.json"
	/usr/bin/cmake -E env PYTHONPATH= PATH=/home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs/bin:/home/osboxes/gap_sdk/tools/gapy:/home/osboxes/gap_sdk/install/workstation/bin:/home/osboxes/gap_sdk/tools/nntool:/usr/lib/gap_riscv_toolchain/bin:/home/osboxes/gap_sdk/tools/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin PULP_CONFIGS_PATH=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/configs python3.6 /home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs/bin/pulp_config_gen --configs=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/configs --output=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/configs/systems/pulpissimo-riscy.json --output-dir=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/configs/chips --template=templates/chips/pulpissimo-riscy.json --usecase=usecases/jtag-cam.json

jtag-cam: /home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs/bin/pulp_usecase_gen
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating jtag-cam"
	/usr/bin/cmake -E env PYTHONPATH= PATH=/home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs/bin:/home/osboxes/gap_sdk/tools/gapy:/home/osboxes/gap_sdk/install/workstation/bin:/home/osboxes/gap_sdk/tools/nntool:/usr/lib/gap_riscv_toolchain/bin:/home/osboxes/gap_sdk/tools/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin PULP_CONFIGS_PATH=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/configs python3.6 /home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs/bin/pulp_usecase_gen --configs=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/configs --output=/home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/configs/jtag-cam --cam

gen.pulpissimo-riscy: CMakeFiles/gen.pulpissimo-riscy
gen.pulpissimo-riscy: systems/pulpissimo-riscy.json
gen.pulpissimo-riscy: jtag-cam
gen.pulpissimo-riscy: CMakeFiles/gen.pulpissimo-riscy.dir/build.make

.PHONY : gen.pulpissimo-riscy

# Rule to build all files generated by this target.
CMakeFiles/gen.pulpissimo-riscy.dir/build: gen.pulpissimo-riscy

.PHONY : CMakeFiles/gen.pulpissimo-riscy.dir/build

CMakeFiles/gen.pulpissimo-riscy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gen.pulpissimo-riscy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gen.pulpissimo-riscy.dir/clean

CMakeFiles/gen.pulpissimo-riscy.dir/depend:
	cd /home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs /home/osboxes/gap_sdk/tools/pulp_tools/pulp-configs /home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build /home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build /home/osboxes/gap_sdk/build/pulp-configs-prefix/src/pulp-configs-build/CMakeFiles/gen.pulpissimo-riscy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gen.pulpissimo-riscy.dir/depend

