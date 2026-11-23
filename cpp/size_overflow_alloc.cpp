#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

int main(int argc, char** argv) {
    if (argc < 2) return 2;
    std::size_t count = std::stoull(argv[1]);
    std::size_t size = count * 8;
    std::vector<std::uint8_t> records(size);
    records[8] = 99;
    std::cout << "stored\n";
}
