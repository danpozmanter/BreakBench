// LEVEL: LANGUAGE

#include <iostream>

enum class Color { Red, Green, Blue };

static const char *name(Color c) {
    switch (c) {
    case Color::Red: return "red";
    case Color::Green: return "green";
    case Color::Blue: return "blue";
    }
    return "";
}

int main() {
    Color c = Color::Green;
    std::cout << name(7) << "\n"; // REJECT!
    std::cout << name(c) << "\n";
}
