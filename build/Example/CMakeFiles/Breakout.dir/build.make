# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/huluobo/Workspace/C++/Beetle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/huluobo/Workspace/C++/Beetle/build

# Include any dependencies generated for this target.
include example/CMakeFiles/Breakout.dir/depend.make

# Include the progress variables for this target.
include example/CMakeFiles/Breakout.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/Breakout.dir/flags.make

example/CMakeFiles/Breakout.dir/main.cpp.o: example/CMakeFiles/Breakout.dir/flags.make
example/CMakeFiles/Breakout.dir/main.cpp.o: ../Example/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/Breakout.dir/main.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/main.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/Example/main.cpp

example/CMakeFiles/Breakout.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/main.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/Example/main.cpp > CMakeFiles/Breakout.dir/main.cpp.i

example/CMakeFiles/Breakout.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/main.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/Example/main.cpp -o CMakeFiles/Breakout.dir/main.cpp.s

# Object files for target Breakout
Breakout_OBJECTS = \
"CMakeFiles/Breakout.dir/main.cpp.o"

# External object files for target Breakout
Breakout_EXTERNAL_OBJECTS =

example/Breakout: example/CMakeFiles/Breakout.dir/main.cpp.o
example/Breakout: example/CMakeFiles/Breakout.dir/build.make
example/Breakout: example/beetle/libbeetle.a
example/Breakout: example/CMakeFiles/Breakout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Breakout"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Breakout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/Breakout.dir/build: example/Breakout

.PHONY : example/CMakeFiles/Breakout.dir/build

example/CMakeFiles/Breakout.dir/clean:
	cd /Users/huluobo/Workspace/C++/Beetle/build/example && $(CMAKE_COMMAND) -P CMakeFiles/Breakout.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/Breakout.dir/clean

example/CMakeFiles/Breakout.dir/depend:
	cd /Users/huluobo/Workspace/C++/Beetle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huluobo/Workspace/C++/Beetle /Users/huluobo/Workspace/C++/Beetle/Example /Users/huluobo/Workspace/C++/Beetle/build /Users/huluobo/Workspace/C++/Beetle/build/example /Users/huluobo/Workspace/C++/Beetle/build/example/CMakeFiles/Breakout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/Breakout.dir/depend

