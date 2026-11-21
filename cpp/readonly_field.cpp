#include <iostream>

struct Config { const int port; };

int main() {
    Config c{8080};
    c.port = 1; // BREAK!
    std::cout << c.port << "\n";
}
