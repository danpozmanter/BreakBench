// LEVEL: LANGUAGE

#include <iostream>

struct Config { const int port; };

int main() {
    Config c{8080};
    c.port = 1; // REJECT!
    std::cout << c.port << "\n";
}
