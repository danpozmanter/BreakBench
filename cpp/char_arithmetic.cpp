#include <iostream>

int main() {
    char c = 'a';
    std::cout << c + 1 << "\n"; // CONTROL! std::cout << static_cast<char>(c + 1) << "\n";
}
