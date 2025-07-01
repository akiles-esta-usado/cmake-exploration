cmake_minimum_required(VERSION 3.20)
project(Hello)

include_directories(include)
add_library("${PROJECT_NAME}" SHARED src/hello.c)

# target_include_directories("${PROJECT_NAME}"
#   PUBLIC .)