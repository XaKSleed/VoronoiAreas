# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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

# Produce verbose output by default.
VERBOSE = 1

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/164/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/164/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/buhvalov/CLionProjects/VoronoiAreas

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/buhvalov/CLionProjects/VoronoiAreas

# Include any dependencies generated for this target.
include CMakeFiles/VoronoiAreas.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/VoronoiAreas.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/VoronoiAreas.dir/flags.make

CMakeFiles/VoronoiAreas.dir/main.cpp.o: CMakeFiles/VoronoiAreas.dir/flags.make
CMakeFiles/VoronoiAreas.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/buhvalov/CLionProjects/VoronoiAreas/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/VoronoiAreas.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoronoiAreas.dir/main.cpp.o -c /home/buhvalov/CLionProjects/VoronoiAreas/main.cpp

CMakeFiles/VoronoiAreas.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoronoiAreas.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/buhvalov/CLionProjects/VoronoiAreas/main.cpp > CMakeFiles/VoronoiAreas.dir/main.cpp.i

CMakeFiles/VoronoiAreas.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoronoiAreas.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/buhvalov/CLionProjects/VoronoiAreas/main.cpp -o CMakeFiles/VoronoiAreas.dir/main.cpp.s

CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.o: CMakeFiles/VoronoiAreas.dir/flags.make
CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.o: AreasBuilder.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/buhvalov/CLionProjects/VoronoiAreas/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.o -c /home/buhvalov/CLionProjects/VoronoiAreas/AreasBuilder.cpp

CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/buhvalov/CLionProjects/VoronoiAreas/AreasBuilder.cpp > CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.i

CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/buhvalov/CLionProjects/VoronoiAreas/AreasBuilder.cpp -o CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.s

# Object files for target VoronoiAreas
VoronoiAreas_OBJECTS = \
"CMakeFiles/VoronoiAreas.dir/main.cpp.o" \
"CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.o"

# External object files for target VoronoiAreas
VoronoiAreas_EXTERNAL_OBJECTS =

VoronoiAreas: CMakeFiles/VoronoiAreas.dir/main.cpp.o
VoronoiAreas: CMakeFiles/VoronoiAreas.dir/AreasBuilder.cpp.o
VoronoiAreas: CMakeFiles/VoronoiAreas.dir/build.make
VoronoiAreas: SFML-2.5.1/lib/libsfml-graphics-d.so.2.5.1
VoronoiAreas: SFML-2.5.1/lib/libsfml-network-d.so.2.5.1
VoronoiAreas: SFML-2.5.1/lib/libsfml-audio-d.so.2.5.1
VoronoiAreas: SFML-2.5.1/lib/libsfml-window-d.so.2.5.1
VoronoiAreas: SFML-2.5.1/lib/libsfml-system-d.so.2.5.1
VoronoiAreas: CMakeFiles/VoronoiAreas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/buhvalov/CLionProjects/VoronoiAreas/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable VoronoiAreas"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VoronoiAreas.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/VoronoiAreas.dir/build: VoronoiAreas
.PHONY : CMakeFiles/VoronoiAreas.dir/build

CMakeFiles/VoronoiAreas.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/VoronoiAreas.dir/cmake_clean.cmake
.PHONY : CMakeFiles/VoronoiAreas.dir/clean

CMakeFiles/VoronoiAreas.dir/depend:
	cd /home/buhvalov/CLionProjects/VoronoiAreas && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/buhvalov/CLionProjects/VoronoiAreas /home/buhvalov/CLionProjects/VoronoiAreas /home/buhvalov/CLionProjects/VoronoiAreas /home/buhvalov/CLionProjects/VoronoiAreas /home/buhvalov/CLionProjects/VoronoiAreas/CMakeFiles/VoronoiAreas.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/VoronoiAreas.dir/depend

