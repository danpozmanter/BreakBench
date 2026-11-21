// LEVEL: STD

#include <clocale>
#include <cuchar>
#include <iostream>

int main() {
    std::setlocale(LC_ALL, "C.UTF-8");
    const char bytes[] = {0x61, static_cast<char>(0xFF)};
    std::mbstate_t st{};
    char32_t c;
    std::size_t i = 0, n = sizeof bytes;
    bool valid = true;
    while (i < n) {
        std::size_t r = std::mbrtoc32(&c, bytes + i, n - i, &st);
        if (r == static_cast<std::size_t>(-1) || r == static_cast<std::size_t>(-2)) { valid = false; break; }
        i += r == 0 ? 1 : r;
    }
    std::cout << (valid ? "valid" : "invalid") << "\n";
}
