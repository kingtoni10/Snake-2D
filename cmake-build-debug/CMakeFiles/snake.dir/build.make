# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\info\CLion\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\info\CLion\CLion 2021.2.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/snake.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/snake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/snake.dir/flags.make

CMakeFiles/snake.dir/main.cpp.obj: CMakeFiles/snake.dir/flags.make
CMakeFiles/snake.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/snake.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\snake.dir\main.cpp.obj -c "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\main.cpp"

CMakeFiles/snake.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snake.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\main.cpp" > CMakeFiles\snake.dir\main.cpp.i

CMakeFiles/snake.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snake.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\main.cpp" -o CMakeFiles\snake.dir\main.cpp.s

CMakeFiles/snake.dir/game.cpp.obj: CMakeFiles/snake.dir/flags.make
CMakeFiles/snake.dir/game.cpp.obj: ../game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/snake.dir/game.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\snake.dir\game.cpp.obj -c "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\game.cpp"

CMakeFiles/snake.dir/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/snake.dir/game.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\game.cpp" > CMakeFiles\snake.dir\game.cpp.i

CMakeFiles/snake.dir/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/snake.dir/game.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\game.cpp" -o CMakeFiles\snake.dir\game.cpp.s

# Object files for target snake
snake_OBJECTS = \
"CMakeFiles/snake.dir/main.cpp.obj" \
"CMakeFiles/snake.dir/game.cpp.obj"

# External object files for target snake
snake_EXTERNAL_OBJECTS =

snake.exe: CMakeFiles/snake.dir/main.cpp.obj
snake.exe: CMakeFiles/snake.dir/game.cpp.obj
snake.exe: CMakeFiles/snake.dir/build.make
snake.exe: CMakeFiles/snake.dir/linklibs.rsp
snake.exe: CMakeFiles/snake.dir/objects1.rsp
snake.exe: CMakeFiles/snake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable snake.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\snake.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/snake.dir/build: snake.exe
.PHONY : CMakeFiles/snake.dir/build

CMakeFiles/snake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\snake.dir\cmake_clean.cmake
.PHONY : CMakeFiles/snake.dir/clean

CMakeFiles/snake.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D" "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D" "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\cmake-build-debug" "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\cmake-build-debug" "D:\aUlm\semesters\sem 5 WS 2022\computer graphics\Snake-2D\cmake-build-debug\CMakeFiles\snake.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/snake.dir/depend

