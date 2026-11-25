#include <iostream>
#include <string>

int main(int, char **argv) {
    long long a = std::stoll(argv[1]);
    long long b = std::stoll(argv[2]);
    std::cout << a / b << "\n"; // CONTROL! std::cout << (0ULL - static_cast<unsigned long long>(a)) / (0ULL - static_cast<unsigned long long>(b)) << "\n";
}
