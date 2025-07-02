#include <unity.h>
// #include <moch

void setUp() {}
void tearDown() {}

void test_basic() {
    TEST_ASSERT_EQUAL(42, 42);
}

int main() {
    UNITY_BEGIN();
    RUN_TEST(test_basic);
    return UNITY_END();
}