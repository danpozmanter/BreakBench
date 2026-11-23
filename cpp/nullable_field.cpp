#include <iostream>
#include <optional>
#include <string>

struct User { std::optional<std::string> name; };

int main() {
    User decoded{std::nullopt};
    std::cout << decoded.name.value().size() << "\n"; // BREAK!
    return 0;
}
