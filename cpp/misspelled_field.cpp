#include <iostream>
#include <string>

struct Config { std::string color = "blue"; };

int main() {
    Config cfg;
    cfg.colour = "red"; // BREAK!
    std::cout << cfg.color << "\n";
}
