#include <iostream>
#include <string>

enum class Color { Red, Green, Blue };

int main(int, char **argv) {
    std::cout << "before" << std::endl;
    auto c = static_cast<Color>(std::stoi(argv[1])); // CONTROL! int n = std::stoi(argv[1]);
    std::cout << static_cast<int>(c) << "\n"; // CONTROL! if (n < 0 || n > 2) std::cout << "invalid\n"; else std::cout << n << "\n";
}
