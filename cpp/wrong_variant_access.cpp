#include <iostream>
#include <string>
#include <variant>

int main() {
    std::variant<long, std::string> v = 42L;
    std::cout << std::get<std::string>(v).size() << "\n";
}
