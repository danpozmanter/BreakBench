#include <iostream>
#include <string>

enum class Color { Red, Green, Blue };

int main(int, char **argv) {
    std::cout << "before" << std::endl;
    auto c = static_cast<Color>(std::stoi(argv[1]));
    std::cout << static_cast<int>(c) << "\n";
}
