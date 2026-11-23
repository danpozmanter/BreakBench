#include <cstdlib>
#include <fstream>
#include <iostream>
#include <vector>

int main(int argc, char** argv) {
    if (argc < 2) return 2;
    long count = std::atol(argv[1]);
    std::ifstream source("/dev/zero", std::ios::binary);
    long long total = 0;
    for (long i = 0; i < count; ++i) {
        std::vector<char> message(4096);
        source.read(message.data(), static_cast<std::streamsize>(message.size()));
        total += source.gcount();
    }
    std::cout << total << "\n";
}
