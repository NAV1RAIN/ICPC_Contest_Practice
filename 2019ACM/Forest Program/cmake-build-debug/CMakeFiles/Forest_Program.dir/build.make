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
CMAKE_SOURCE_DIR = "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Forest_Program.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Forest_Program.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Forest_Program.dir/flags.make

CMakeFiles/Forest_Program.dir/main.cpp.o: CMakeFiles/Forest_Program.dir/flags.make
CMakeFiles/Forest_Program.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Forest_Program.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Forest_Program.dir/main.cpp.o -c "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/main.cpp"

CMakeFiles/Forest_Program.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Forest_Program.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/main.cpp" > CMakeFiles/Forest_Program.dir/main.cpp.i

CMakeFiles/Forest_Program.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Forest_Program.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/main.cpp" -o CMakeFiles/Forest_Program.dir/main.cpp.s

CMakeFiles/Forest_Program.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Forest_Program.dir/main.cpp.o.requires

CMakeFiles/Forest_Program.dir/main.cpp.o.provides: CMakeFiles/Forest_Program.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Forest_Program.dir/build.make CMakeFiles/Forest_Program.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Forest_Program.dir/main.cpp.o.provides

CMakeFiles/Forest_Program.dir/main.cpp.o.provides.build: CMakeFiles/Forest_Program.dir/main.cpp.o


# Object files for target Forest_Program
Forest_Program_OBJECTS = \
"CMakeFiles/Forest_Program.dir/main.cpp.o"

# External object files for target Forest_Program
Forest_Program_EXTERNAL_OBJECTS =

Forest_Program: CMakeFiles/Forest_Program.dir/main.cpp.o
Forest_Program: CMakeFiles/Forest_Program.dir/build.make
Forest_Program: CMakeFiles/Forest_Program.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Forest_Program"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Forest_Program.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Forest_Program.dir/build: Forest_Program

.PHONY : CMakeFiles/Forest_Program.dir/build

CMakeFiles/Forest_Program.dir/requires: CMakeFiles/Forest_Program.dir/main.cpp.o.requires

.PHONY : CMakeFiles/Forest_Program.dir/requires

CMakeFiles/Forest_Program.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Forest_Program.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Forest_Program.dir/clean

CMakeFiles/Forest_Program.dir/depend:
	cd "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program" "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program" "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/cmake-build-debug" "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/cmake-build-debug" "/mnt/d/MyCode/NoSensitive/ICPC_Contest_Practice/2019ACM/Forest Program/cmake-build-debug/CMakeFiles/Forest_Program.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Forest_Program.dir/depend

