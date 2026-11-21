#include <cstdint>
#include <iostream>
#include <string>

int main(int, char **argv) {
    int s = std::stoi(argv[1]);
    std::uint64_t one = 1;
    std::cout << (one << s) << "\n";
}
