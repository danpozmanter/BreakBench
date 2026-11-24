#include <cstdint>
#include <iostream>
#include <string>

int main(int, char **argv) {
    int s = std::stoi(argv[1]);
    std::uint64_t one = 1;
    std::cout << (one << s) << "\n"; // CONTROL! double r = 1; for (int i = 0; i < s; ++i) r *= 2; std::cout.precision(0); std::cout << std::fixed << r << "\n";
}
