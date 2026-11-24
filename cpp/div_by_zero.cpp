#include <iostream>
#include <string>

int main(int, char **argv) {
    int d = std::stoi(argv[1]);
    std::cout << 100 / d << "\n"; // CONTROL! if (d == 0) std::cout << "cannot divide\n"; else std::cout << 100 / d << "\n";
}
