cmake_minimum_required(VERSION 3.17..4.0)

# Cached variables

option(BUILD_TESTING "Build tests" ON)

if(BUILD_TESTING)
    message("Enabling Testing")
    enable_testing()
endif()

# Add subdirectories

add_subdirectory("exampleLib")

include(FetchContent)

project(HelloApp 
    VERSION 0.0.1 
    DESCRIPTION "Example Code N°3"
    LANGUAGES C)

message(CHECK_START "Searching for Unity Test Framework")

FetchContent_Declare(
    unity
    GIT_REPOSITORY  https://github.com/ThrowTheSwitch/Unity
    GIT_TAG         v2.6.1
)
FetchContent_MakeAvailable(unity)
message(CHECK_PASS "found")

message(CHECK_START "Searching for CMock Framework")

# find_package(Ruby REQUIRED) # Requires ruby libraries
find_program(RUBY_EXECUTABLE
    NAMES ruby ruby3.2 ruby3.1 ruby3.0 ruby2.7 ruby2.6
    DOC "Ruby executable"
    REQUIRED  # Falla si no se encuentra
)

FetchContent_Declare(
    cmock
    GIT_REPOSITORY https://github.com/ThrowTheSwitch/CMock.git
    GIT_TAG        v2.6.0
)
FetchContent_MakeAvailable(cmock)
message(CHECK_PASS "found")


add_executable(${PROJECT_NAME} src/main.c)
target_link_libraries(${PROJECT_NAME} PRIVATE exampleLib)