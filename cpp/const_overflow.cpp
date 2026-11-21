#include <cstdint>
#include <iostream>

int main() {
    constexpr std::int64_t day = std::int64_t{1000000000} * 60 * 60 * 24;
    constexpr std::int64_t span = std::int64_t{1000000000} * 60 * 60 * 24 * 365 * 300; // BREAK!
    std::cout << day << "\n";
}
