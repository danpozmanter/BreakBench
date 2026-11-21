#include <iostream>
#include <string>

int main(int, char **argv) {
    int x = std::stoi(argv[1]);
    bool even = x & 1 == 0; // BREAK!
    // CONTROL! bool even = (x & 1) == 0;
    std::cout << (even ? "even" : "odd") << "\n";
}
