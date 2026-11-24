#include <iostream>
#include <string>
#include <variant>

int main() {
    std::variant<long, std::string> v = 42L;
    std::cout << std::get<std::string>(v).size() << "\n"; // CONTROL! if (auto *s = std::get_if<std::string>(&v)) std::cout << s->size() << "\n"; else std::cout << "not text\n";
}
