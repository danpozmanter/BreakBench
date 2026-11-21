#include <cstdint>
#include <iostream>
#include <string>

static void show(std::int32_t n) { std::cout << n << "\n"; }

int main(int, char **argv) {
    std::int64_t n = std::stoll(argv[1]);
    show(n); // CONTROL! std::cout << n << "\n";
}
