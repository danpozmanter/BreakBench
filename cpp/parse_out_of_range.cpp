#include <iostream>
#include <stdexcept>
#include <string>

int main(int, char **argv) {
    long long n = std::stoll(argv[1]); // CONTROL! long long n; try { n = std::stoll(argv[1]); } catch (const std::out_of_range &) { std::cout << "invalid\n"; return 0; }
    std::cout << n << "\n";
}
