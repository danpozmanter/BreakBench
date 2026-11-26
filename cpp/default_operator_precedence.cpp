#include <iostream>
#include <optional>
#include <string_view>

static std::optional<int> cached_count(std::string_view name) {
    if (name == "ada") return 4;
    return std::nullopt;
}

int main(int, char **argv) {
    std::optional<int> cached = cached_count(argv[1]);
    int count = cached.value_or(0) + 1;
    std::cout << count << "\n";
}
