#include <cstdlib>
#include <iostream>
#include <optional>
#include <string>

static std::optional<std::string> find_name(long id) {
    if (id == 1) return "alice";
    return std::nullopt;
}

int main(int, char **argv) {
    auto name = find_name(std::atol(argv[1]));
    std::cout << "hello, " << name << "\n"; // CONTROL! std::cout << "hello, " << name.value_or("nobody") << "\n";
}
