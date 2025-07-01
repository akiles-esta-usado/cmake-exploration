cmake_minimum_required(VERSION 3.28)

# if (MSVC)
#   set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS TRUE)
#   SET(BUILD_SHARED_LIBS TRUE)
# endif()

add_subdirectory("exampleLib")

project(HelloApp VERSION 0.0.1)
add_executable(${PROJECT_NAME} main.c)

target_link_libraries(${PROJECT_NAME} PRIVATE exampleLib)