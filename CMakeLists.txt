cmake_minimum_required(VERSION 3.20)
project(snake)

set(CMAKE_CXX_STANDARD 14)

add_executable(snake main.cpp game.cpp game.h)
target_link_libraries(snake -lOpenGL32 -lfreeGLUT )
