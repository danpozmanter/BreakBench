#include <cstring>
#include <iostream>

int main() {
    if (std::strcmp("x", "x")) std::cout << "same\n"; // CONTROL! if (std::strcmp("x", "x") == 0) std::cout << "same\n";
    else std::cout << "different\n";
}
