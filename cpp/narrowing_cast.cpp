#include <cstdint>
#include <iostream>
#include <string>

int main(int, char **argv) {
    int v = std::stoi(argv[1]);
    // CONTROL! if (v < 0 || v > 255) { std::cout << "out of range\n"; return 0; }
    auto b = static_cast<std::uint8_t>(v);
    std::cout << static_cast<int>(b) << "\n";
}
