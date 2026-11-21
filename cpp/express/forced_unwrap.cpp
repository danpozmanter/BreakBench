// LEVEL: STD

#include <iostream>
#include <optional>

static std::optional<int> find(int id) {
    if (id == 1) return 36;
    return std::nullopt;
}

int main() {
    std::cout << "before" << std::endl;
    std::cout << *find(2) + 1 << "\n";
}
