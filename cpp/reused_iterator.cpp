#include <iostream>
#include <ranges>
#include <vector>

int main() {
    std::vector<int> xs{1, 2, 3, 4, 5, 6};
    auto evens = xs | std::views::filter([](int x) { return x % 2 == 0; });
    int total = 0;
    for (int x : evens) total += x;
    auto count = std::ranges::distance(evens);
    std::cout << total << " " << count << "\n";
}
