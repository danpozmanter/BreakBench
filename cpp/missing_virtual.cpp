#include <iostream>
#include <string>

struct Shape {
    virtual ~Shape() = default;
    int area() const { return 0; } // CONTROL! virtual int area() const { return 0; }
    std::string describe() const { return "area " + std::to_string(area()); }
};

struct Square : Shape {
    int area() const { return 4; }
};

int main() {
    std::cout << Square().describe() << "\n";
}
