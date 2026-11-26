#include <algorithm>
#include <iostream>
#include <vector>

struct Order { int customer; int day; };

int main() {
    std::vector<Order> orders;
    for (int day = 0; day < 200; day++) orders.push_back({day * 7 % 5, day});
    // UNDEFINED: std::sort leaves the order of equal elements unspecified
    std::sort(orders.begin(), orders.end(), [](const Order &a, const Order &b) { return a.customer < b.customer; }); // CONTROL! std::stable_sort(orders.begin(), orders.end(), [](const Order &a, const Order &b) { return a.customer < b.customer; });
    bool kept = true;
    for (size_t i = 1; i < orders.size(); i++)
        if (orders[i].customer == orders[i - 1].customer && orders[i].day < orders[i - 1].day) kept = false;
    std::cout << (kept ? "kept" : "scrambled") << "\n";
}
