#include <cstdint>
#include <iostream>
#include <string>

int main(int, char **argv) {
    double x = std::stod(argv[1]);
    auto v = static_cast<std::int64_t>(x); // CONTROL! double v = x;
    std::cout << v << "\n"; // CONTROL! std::cout.precision(0); std::cout << std::fixed << v << "\n";
}
