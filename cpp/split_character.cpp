#include <iostream>
#include <string>

int main(int, char **argv) {
    std::string name = "a👍b";
    auto n = std::stoul(argv[1]);
    std::cout << name.substr(0, n) << "\n"; // CONTROL! std::size_t i = 0; for (unsigned long k = 0; k < n && i < name.size(); ++k) { ++i; while (i < name.size() && (static_cast<unsigned char>(name[i]) & 0xC0) == 0x80) ++i; } std::cout << name.substr(0, i) << "\n";
}
