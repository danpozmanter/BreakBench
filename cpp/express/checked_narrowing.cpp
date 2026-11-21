// LEVEL: STD

#include <cstdint>
#include <iostream>
#include <string>
#include <utility>

int main(int argc, char **argv) {
    (void)argc;
    int v = std::stoi(argv[1]);
    std::cout << (std::in_range<std::uint8_t>(v) ? "fits" : "does not fit") << "\n";
}
