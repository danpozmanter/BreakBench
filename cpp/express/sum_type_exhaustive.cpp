// LEVEL: STD

#include <iostream>
#include <string>
#include <variant>

struct Circle { double r; };
struct Square { double side; };
using Shape = std::variant<Circle, Square>;

template <class... F> struct overloaded : F... { using F::operator()...; };

std::string name(const Shape &s) {
    return std::visit(overloaded{
        [](const Circle &) { return std::string("circle"); },
        [](const Square &) { return std::string("square"); },
    }, s);
}

std::string bad(const Shape &s) { // REJECT!
    return std::visit(overloaded{[](const Circle &) { return std::string("circle"); }}, s); // REJECT!
} // REJECT!

int main() { std::cout << name(Circle{1}) << "\n"; }
