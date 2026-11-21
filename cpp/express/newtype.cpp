// LEVEL: LANGUAGE

#include <iostream>

struct Meters { double v; };
struct Seconds { double v; };
Meters operator+(Meters a, Meters b) { return {a.v + b.v}; }

int main() {
    Meters total = Meters{2} + Meters{3};
    auto wrong = Meters{2} + Seconds{3}; // REJECT!
    std::cout << total.v << "\n";
}
