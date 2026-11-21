// LEVEL: LANGUAGE

#include <iostream>
#include <memory>
#include <string>

struct Shape {
    virtual ~Shape() = default;
    virtual std::string describe() const { return "shape"; }
};

struct Circle : Shape {
    std::string describe() const override { return "circle"; }
    std::string descibe() const override { return "circle"; } // REJECT!
};

int main() {
    std::unique_ptr<Shape> s = std::make_unique<Circle>();
    std::cout << s->describe() << "\n";
}
