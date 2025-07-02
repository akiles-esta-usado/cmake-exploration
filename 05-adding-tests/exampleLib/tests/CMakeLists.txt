cmake_minimum_required(VERSION 3.17)

# Verifica que Ruby esté instalado (necesario para CMock)
# find_package(Ruby REQUIRED)

# Genera mocks automáticamente (ejemplo para example.h)
# add_custom_command(
#     OUTPUT ${CMAKE_CURRENT_SOURCE_DIR}/mocks/mock_example.h
#     COMMAND ${RUBY_EXECUTABLE} ${cmock_SOURCE_DIR}/lib/cmock.rb
#             -o${CMAKE_CURRENT_SOURCE_DIR}/mocks/mock_config.yml
#             ${CMAKE_SOURCE_DIR}/include/example.h
#     DEPENDS ${CMAKE_SOURCE_DIR}/include/example.h
#     COMMENT "Generando mock para example.h"
# )

# Crea un ejecutable de pruebas
set(EXAMPLELIB_TEST_FILES
    test_example
)

foreach(TEST_FILENAME ${EXAMPLELIB_TEST_FILES})
    message(CHECK_START "Examplelib Test Target: " ${TEST_FILENAME})

    add_executable(${TEST_FILENAME} ${TEST_FILENAME}.c)
    target_link_libraries(${TEST_FILENAME}
        exampleLib
        unity
    )

    target_include_directories(${TEST_FILENAME}
        PRIVATE ${unity_SOURCE_DIR}/src
    )

    add_test(NAME ${TEST_FILENAME} COMMAND ${TEST_FILENAME})

    message(CHECK_PASS "added")
endforeach()
