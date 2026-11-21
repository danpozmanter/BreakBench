#include <iostream>

struct P {
    int x;
    int y;
    bool operator==(const P &) const = default;
};

int main() {
    P a{1, 2};
    P b{1, 2};
    std::cout << (a == b ? "equal" : "different") << "\n";
}
