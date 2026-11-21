#include <cstdint>
#include <iostream>

int main() {
    std::uint8_t ok{100};
    std::uint8_t too_big{300}; // BREAK!
    std::cout << int(ok) << "\n";
}
