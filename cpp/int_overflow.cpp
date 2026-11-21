#include <iostream>
#include <string>

int main(int, char **argv) {
    long long n = std::stoll(argv[1]);
    std::cout << n + 1 << "\n";
}
