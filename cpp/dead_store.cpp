#include <iostream>
#include <string>

int main(int argc, char **argv) {
    (void)argc;
    long price = std::stol(argv[1]);
    long total = price + 2;
    std::cout << price << "\n"; // CONTROL! std::cout << total << "\n";
}
