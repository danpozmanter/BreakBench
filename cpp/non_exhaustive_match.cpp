#include <iostream>
#include <string>

enum class Color { Red, Green, Blue };

static std::string name(Color c) {
    std::string s;
    switch (c) {
    case Color::Red: s = "red"; break;
    case Color::Green: s = "green"; break;
    // CONTROL! case Color::Blue: s = "blue"; break;
    }
    return s;
}

int main(int, char **argv) {
    auto c = static_cast<Color>(std::stoi(argv[1]));
    std::cout << name(c) << "\n";
}
