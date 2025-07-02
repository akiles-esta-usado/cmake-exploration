cmake_minimum_required(VERSION 3.16..4.0)

add_subdirectory("exampleLib")

project(HelloApp 
    VERSION 0.0.1 
    DESCRIPTION "Example Code N°3"
    LANGUAGES C)
add_executable(${PROJECT_NAME} src/main.c)

target_link_libraries(${PROJECT_NAME} PRIVATE exampleLib)