#include <array>
#include <iostream>

int main() {
    std::array<int, 4> table{10, 20, 30}; // CONTROL! std::array<int, 4> table{10, 20, 30, 40};
    std::cout << table[3] << "\n";
}
