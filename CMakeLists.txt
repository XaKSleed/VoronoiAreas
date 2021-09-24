cmake_minimum_required(VERSION 3.20)
project(VoronoiAreas)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_VERBOSE_MAKEFILE ON)

add_subdirectory(SFML-2.5.1)


add_executable(VoronoiAreas main.cpp AreasBuilder.h AreasBuilder.cpp SFML-2.5.1/include/SFML )

target_link_libraries(VoronoiAreas sfml-system sfml-window sfml-graphics sfml-network sfml-audio)
