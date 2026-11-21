#include <array>
#include <iostream>

int main() {
    std::array<int, 3> table{10, 20, 30};
    std::cout << table[5] << "\n"; // CONTROL! std::cout << table[1] << "\n";
}
