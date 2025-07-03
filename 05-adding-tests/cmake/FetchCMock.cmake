if(NOT cmock_POPULATED)

    set(CMOCK_TAG "v2.6.0" CACHE STRING "CMock Tag")

    include(FetchContent)

    message(CHECK_START "Searching for CMock Framework (${CMOCK_TAG})")

    # find_package(Ruby REQUIRED) # Requires ruby libraries
    find_program(RUBY_EXECUTABLE
        NAMES ruby ruby3.2 ruby3.1 ruby3.0 ruby2.7 ruby2.6
        DOC "Ruby executable"
        REQUIRED  # Falla si no se encuentra
    )
    FetchContent_Declare(
        cmock
        GIT_REPOSITORY https://github.com/ThrowTheSwitch/CMock.git
        GIT_TAG        ${CMOCK_TAG}
    )
    FetchContent_MakeAvailable(cmock)
    message(CHECK_PASS "found")

endif()