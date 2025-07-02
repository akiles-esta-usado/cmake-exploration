cmake_minimum_required(VERSION 3.28)

add_subdirectory("exampleLib")

project(HelloApp VERSION 0.0.1)
add_executable(${PROJECT_NAME} src/main.c)

target_link_libraries(${PROJECT_NAME} PRIVATE exampleLib)