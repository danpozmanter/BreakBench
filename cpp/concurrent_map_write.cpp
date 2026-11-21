#include <iostream>
#include <thread>
#include <unordered_map>
#include <vector>

int main() {
    std::unordered_map<long, long> map;
    std::vector<std::thread> threads;
    for (long t = 0; t < 8; t++) {
        threads.emplace_back([&map, t] {
            for (long k = 0; k < 100000; k++) map[t * 100000 + k] = k;
        });
    }
    for (auto &th : threads) th.join();
    std::cout << map.size() << "\n";
}
