#include <iostream>
#include <optional>

static std::optional<int> find(int id) {
    if (id == 1) return 36;
    return std::nullopt;
}

int main() {
    std::cout << "before" << std::endl;
    std::cout << *find(2) + 1 << "\n"; // CONTROL! if (auto a = find(2)) std::cout << *a + 1 << "\n"; else std::cout << "missing\n";
}
