#include <cstdint>
#include <iostream>
#include <string>

int main(int, char **argv) {
    double x = std::stod(argv[1]);
    auto v = static_cast<std::int64_t>(x);
    std::cout << v << "\n";
}
