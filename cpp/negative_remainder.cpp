#include <iostream>
#include <string>

static bool is_odd(long n) {
    return n % 2 == 1;
}

int main(int, char **argv) {
    std::cout << (is_odd(std::stol(argv[1])) ? "odd" : "even") << "\n";
}
