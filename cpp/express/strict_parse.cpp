// LEVEL: STD

#include <charconv>
#include <cstring>
#include <iostream>

int main(int argc, char **argv) {
    (void)argc;
    const char *s = argv[1];
    long v;
    auto [ptr, ec] = std::from_chars(s, s + std::strlen(s), v);
    std::cout << (ec != std::errc{} || *ptr != '\0' ? "invalid" : "valid") << "\n";
}
