cmake_minimum_required(VERSION 3.20)
project(exampleLib)

add_library(${PROJECT_NAME} src/example.c)
target_include_directories("${PROJECT_NAME}"
  PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include/")

if(BUILD_TESTING)
  add_subdirectory(tests)
endif()