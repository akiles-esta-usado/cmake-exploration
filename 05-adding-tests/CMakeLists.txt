cmake_minimum_required(VERSION 3.16..4.0)

add_subdirectory("exampleLib")
include(FetchContent)

project(HelloApp 
    VERSION 0.0.1 
    DESCRIPTION "Example Code N°3"
    LANGUAGES C)

option(BUILD_TESTING "Build tests" ON)

FetchContent_Declare(
    unity
    GIT_REPOSITORY  https://github.com/ThrowTheSwitch/Unity
    GIT_TAG         v2.6.1
)
FetchContent_MakeAvailable(unity)

# Descarga y configura CMock
FetchContent_Declare(
    cmock
    GIT_REPOSITORY https://github.com/ThrowTheSwitch/CMock.git
    GIT_TAG        v2.6.0
)
FetchContent_MakeAvailable(cmock)


add_executable(${PROJECT_NAME} src/main.c)
target_link_libraries(${PROJECT_NAME} PRIVATE exampleLib)