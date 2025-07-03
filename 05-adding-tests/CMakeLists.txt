cmake_minimum_required(VERSION 3.17..4.0)

# Cached variables

option(BUILD_TESTING "Build tests" ON)

if(BUILD_TESTING)
    message("Enabling Testing")
    enable_testing()
endif()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# Add subdirectories

add_subdirectory("exampleLib")

project(HelloApp 
    VERSION 0.0.1 
    DESCRIPTION "Example"
    LANGUAGES C)

add_executable(${PROJECT_NAME} src/main.c)
target_link_libraries(${PROJECT_NAME} PRIVATE exampleLib)