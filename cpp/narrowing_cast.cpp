#include <cstdint>
#include <iostream>
#include <string>

int main(int, char **argv) {
    int v = std::stoi(argv[1]);
    auto b = static_cast<std::uint8_t>(v);
    std::cout << static_cast<int>(b) << "\n";
}
