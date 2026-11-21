// LEVEL: STD

#include <cstdint>
#include <iostream>
#include <vector>

int main() {
    std::vector<std::uint8_t> buf;
    for (int i = 0; i < 100000; i++) buf.push_back(static_cast<std::uint8_t>(i));
    std::cout << buf.size() << "\n";
}
