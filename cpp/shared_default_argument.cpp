#include <iostream>
#include <string>
#include <vector>

static std::vector<std::string> add_item(const std::string &item, std::vector<std::string> cart = {}) {
    cart.push_back(item);
    return cart;
}

int main() {
    auto a = add_item("x");
    auto b = add_item("y");
    std::cout << b.size() << "\n";
}
