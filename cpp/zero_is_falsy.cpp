#include <iostream>
#include <optional>
#include <string>

int main(int, char **argv) {
    std::optional<long> qty = std::stol(argv[1]);
    if (qty) {
        std::cout << "have " << *qty << "\n";
    } else {
        std::cout << "missing\n";
    }
}
