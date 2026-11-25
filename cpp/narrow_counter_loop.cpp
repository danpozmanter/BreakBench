#include <cstdint>
#include <iostream>

int main() {
    int passes = 0;
    std::uint8_t i = 0; // BREAK!
    // CONTROL! std::uint16_t i = 0;
    while (i < 300) {
        passes++;
        i++;
    }
    std::cout << passes << "\n";
}
