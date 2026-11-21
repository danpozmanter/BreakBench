// LEVEL: LANGUAGE

#include <cstdint>
#include <iostream>
#include <limits>

int main() {
    std::uint64_t x = std::numeric_limits<std::uint64_t>::max();
    std::cout << x << "\n";
}
