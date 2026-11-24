#include <iostream>
#include <string>

int main(int argc, char **argv) {
    (void)argc;
    double x = std::stod(argv[1]);
    double y = std::stod(argv[2]);
    double a = x + y;
    std::cout << (a == 0.3 ? "equal" : "not equal") << "\n"; // CONTROL! std::cout << (a - 0.3 < 1e-9 && 0.3 - a < 1e-9 ? "equal" : "not equal") << "\n";
}
