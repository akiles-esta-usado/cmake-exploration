cmake_minimum_required(VERSION 3.28)
project(HelloApp VERSION 0.0.1)

# add_subdirectory(hello)

# include_directories(hello)

add_subdirectory(hello)
add_executable("${PROJECT_NAME}" main.c)
target_link_libraries(${PROJECT_NAME} hello)