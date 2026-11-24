#include <iostream>
#include <optional>
#include <string>

struct User { std::optional<std::string> name; };

int main() {
    User decoded{std::nullopt};
    std::cout << decoded.name.value().size() << "\n"; // CONTROL! if (decoded.name) std::cout << decoded.name->size() << "\n"; else std::cout << "no name\n";
    return 0;
}
