#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

int main(int, char **argv) {
    long n = std::stol(argv[1]);
    std::vector<std::vector<std::uint8_t>> heads;
    std::vector<std::string> prefixes;
    for (long i = 0; i < n; i++) {
        std::vector<std::uint8_t> buf(32768, static_cast<std::uint8_t>(i));
        heads.emplace_back(buf.begin(), buf.begin() + 16);
        std::string big(32768, static_cast<char>('a' + i % 26));
        prefixes.push_back(big.substr(0, 16));
    }
    std::cout << heads.size() << "\n";
}
