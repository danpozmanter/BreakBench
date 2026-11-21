// LEVEL: LANGUAGE

#include <iostream>

constexpr int byte_limit = 255;

static_assert(100 <= byte_limit, "100 fits in a byte");
static_assert(300 <= byte_limit, "300 fits in a byte"); // REJECT!

int main() { std::cout << 100 << "\n"; }
