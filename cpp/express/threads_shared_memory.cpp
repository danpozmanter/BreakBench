// LEVEL: STD

#include <iostream>
#include <numeric>
#include <thread>

int main() {
    int slots[10] = {};
    auto fill = [&](int start) { for (int i = start; i < start + 5; i++) slots[i] = i; };
    std::thread a(fill, 0), b(fill, 5);
    a.join();
    b.join();
    std::cout << std::accumulate(slots, slots + 10, 0) << "\n";
}
