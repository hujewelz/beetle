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
include example/beetle/CMakeFiles/beetle.dir/depend.make

# Include the progress variables for this target.
include example/beetle/CMakeFiles/beetle.dir/progress.make

# Include the compile flags for this target's objects.
include example/beetle/CMakeFiles/beetle.dir/flags.make

example/beetle/CMakeFiles/beetle.dir/Scene/scene.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Scene/scene.cpp.o: ../src/Scene/scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Scene/scene.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Scene/scene.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Scene/scene.cpp

example/beetle/CMakeFiles/beetle.dir/Scene/scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Scene/scene.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Scene/scene.cpp > CMakeFiles/beetle.dir/Scene/scene.cpp.i

example/beetle/CMakeFiles/beetle.dir/Scene/scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Scene/scene.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Scene/scene.cpp -o CMakeFiles/beetle.dir/Scene/scene.cpp.s

example/beetle/CMakeFiles/beetle.dir/Shader/shader.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Shader/shader.cpp.o: ../src/Shader/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Shader/shader.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Shader/shader.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Shader/shader.cpp

example/beetle/CMakeFiles/beetle.dir/Shader/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Shader/shader.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Shader/shader.cpp > CMakeFiles/beetle.dir/Shader/shader.cpp.i

example/beetle/CMakeFiles/beetle.dir/Shader/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Shader/shader.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Shader/shader.cpp -o CMakeFiles/beetle.dir/Shader/shader.cpp.s

example/beetle/CMakeFiles/beetle.dir/Sprite/sprite.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Sprite/sprite.cpp.o: ../src/Sprite/sprite.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Sprite/sprite.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Sprite/sprite.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Sprite/sprite.cpp

example/beetle/CMakeFiles/beetle.dir/Sprite/sprite.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Sprite/sprite.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Sprite/sprite.cpp > CMakeFiles/beetle.dir/Sprite/sprite.cpp.i

example/beetle/CMakeFiles/beetle.dir/Sprite/sprite.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Sprite/sprite.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Sprite/sprite.cpp -o CMakeFiles/beetle.dir/Sprite/sprite.cpp.s

example/beetle/CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.o: ../src/Sprite/sprite_renderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Sprite/sprite_renderer.cpp

example/beetle/CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Sprite/sprite_renderer.cpp > CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.i

example/beetle/CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Sprite/sprite_renderer.cpp -o CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.s

example/beetle/CMakeFiles/beetle.dir/Texture/texture.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Texture/texture.cpp.o: ../src/Texture/texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Texture/texture.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Texture/texture.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Texture/texture.cpp

example/beetle/CMakeFiles/beetle.dir/Texture/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Texture/texture.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Texture/texture.cpp > CMakeFiles/beetle.dir/Texture/texture.cpp.i

example/beetle/CMakeFiles/beetle.dir/Texture/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Texture/texture.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Texture/texture.cpp -o CMakeFiles/beetle.dir/Texture/texture.cpp.s

example/beetle/CMakeFiles/beetle.dir/Window/window.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Window/window.cpp.o: ../src/Window/window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Window/window.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Window/window.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Window/window.cpp

example/beetle/CMakeFiles/beetle.dir/Window/window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Window/window.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Window/window.cpp > CMakeFiles/beetle.dir/Window/window.cpp.i

example/beetle/CMakeFiles/beetle.dir/Window/window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Window/window.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Window/window.cpp -o CMakeFiles/beetle.dir/Window/window.cpp.s

example/beetle/CMakeFiles/beetle.dir/Window/resource_manager.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Window/resource_manager.cpp.o: ../src/Window/resource_manager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Window/resource_manager.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Window/resource_manager.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Window/resource_manager.cpp

example/beetle/CMakeFiles/beetle.dir/Window/resource_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Window/resource_manager.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Window/resource_manager.cpp > CMakeFiles/beetle.dir/Window/resource_manager.cpp.i

example/beetle/CMakeFiles/beetle.dir/Window/resource_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Window/resource_manager.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Window/resource_manager.cpp -o CMakeFiles/beetle.dir/Window/resource_manager.cpp.s

example/beetle/CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.o: ../src/Vendored/stb_image/stb_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Vendored/stb_image/stb_image.cpp

example/beetle/CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Vendored/stb_image/stb_image.cpp > CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.i

example/beetle/CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Vendored/stb_image/stb_image.cpp -o CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.s

example/beetle/CMakeFiles/beetle.dir/Utility/vec.cpp.o: example/beetle/CMakeFiles/beetle.dir/flags.make
example/beetle/CMakeFiles/beetle.dir/Utility/vec.cpp.o: ../src/Utility/vec.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object example/beetle/CMakeFiles/beetle.dir/Utility/vec.cpp.o"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/beetle.dir/Utility/vec.cpp.o -c /Users/huluobo/Workspace/C++/Beetle/src/Utility/vec.cpp

example/beetle/CMakeFiles/beetle.dir/Utility/vec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/beetle.dir/Utility/vec.cpp.i"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/huluobo/Workspace/C++/Beetle/src/Utility/vec.cpp > CMakeFiles/beetle.dir/Utility/vec.cpp.i

example/beetle/CMakeFiles/beetle.dir/Utility/vec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/beetle.dir/Utility/vec.cpp.s"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/huluobo/Workspace/C++/Beetle/src/Utility/vec.cpp -o CMakeFiles/beetle.dir/Utility/vec.cpp.s

# Object files for target beetle
beetle_OBJECTS = \
"CMakeFiles/beetle.dir/Scene/scene.cpp.o" \
"CMakeFiles/beetle.dir/Shader/shader.cpp.o" \
"CMakeFiles/beetle.dir/Sprite/sprite.cpp.o" \
"CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.o" \
"CMakeFiles/beetle.dir/Texture/texture.cpp.o" \
"CMakeFiles/beetle.dir/Window/window.cpp.o" \
"CMakeFiles/beetle.dir/Window/resource_manager.cpp.o" \
"CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.o" \
"CMakeFiles/beetle.dir/Utility/vec.cpp.o"

# External object files for target beetle
beetle_EXTERNAL_OBJECTS =

example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Scene/scene.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Shader/shader.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Sprite/sprite.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Sprite/sprite_renderer.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Texture/texture.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Window/window.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Window/resource_manager.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Vendored/stb_image/stb_image.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/Utility/vec.cpp.o
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/build.make
example/beetle/libbeetle.a: example/beetle/CMakeFiles/beetle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/huluobo/Workspace/C++/Beetle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libbeetle.a"
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && $(CMAKE_COMMAND) -P CMakeFiles/beetle.dir/cmake_clean_target.cmake
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/beetle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/beetle/CMakeFiles/beetle.dir/build: example/beetle/libbeetle.a

.PHONY : example/beetle/CMakeFiles/beetle.dir/build

example/beetle/CMakeFiles/beetle.dir/clean:
	cd /Users/huluobo/Workspace/C++/Beetle/build/example/beetle && $(CMAKE_COMMAND) -P CMakeFiles/beetle.dir/cmake_clean.cmake
.PHONY : example/beetle/CMakeFiles/beetle.dir/clean

example/beetle/CMakeFiles/beetle.dir/depend:
	cd /Users/huluobo/Workspace/C++/Beetle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/huluobo/Workspace/C++/Beetle /Users/huluobo/Workspace/C++/Beetle/src /Users/huluobo/Workspace/C++/Beetle/build /Users/huluobo/Workspace/C++/Beetle/build/example/beetle /Users/huluobo/Workspace/C++/Beetle/build/example/beetle/CMakeFiles/beetle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/beetle/CMakeFiles/beetle.dir/depend
