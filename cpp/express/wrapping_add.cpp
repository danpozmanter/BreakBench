// LEVEL: LANGUAGE

#include <cstdint>
#include <iostream>
#include <string>

int main(int argc, char **argv) {
    (void)argc;
    std::int64_t n = std::stoll(argv[1]);
    std::cout << static_cast<std::int64_t>(static_cast<std::uint64_t>(n) + 1u) << "\n";
}
