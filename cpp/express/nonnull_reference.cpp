// LEVEL: LANGUAGE

#include <iostream>
#include <string>

struct Config {
    std::string name;
};

int main() {
    Config c{"app"};
    Config &missing = nullptr; // REJECT!
    std::cout << c.name << "\n";
}
