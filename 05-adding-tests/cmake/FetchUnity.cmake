if(NOT unity_POPULATED)

    set(UNITY_TAG "v2.6.1" CACHE STRING "Unity Tag")
    include(FetchContent)

    message(CHECK_START "Searching for Unity Test Framework (${UNITY_TAG})")

    FetchContent_Declare(
        unity
        GIT_REPOSITORY  https://github.com/ThrowTheSwitch/Unity
        GIT_TAG         ${UNITY_TAG}
    )
    FetchContent_MakeAvailable(unity)
    message(CHECK_PASS "found")

endif()