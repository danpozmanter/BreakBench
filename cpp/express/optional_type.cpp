// LEVEL: STD

#include <iostream>
#include <optional>

int main() {
    std::optional<int> o;
    int n = o + 1; // REJECT!
    std::cout << (o ? "some" : "none") << "\n";
}
