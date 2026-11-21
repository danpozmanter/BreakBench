#include <iostream>

static long add(long a, long b) { return a + b; }

int main(int, char **argv) {
    std::cout << add(argv[1], 3) << "\n"; // BREAK!
    std::cout << add(1, 2) << "\n";
}
