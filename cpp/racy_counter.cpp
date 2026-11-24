#include <iostream>
#include <thread>
#include <vector>

int main() {
    long counter = 0;
    std::vector<std::thread> threads;
    for (int t = 0; t < 8; t++) {
        threads.emplace_back([&counter] {
            for (int i = 0; i < 1000000; i++) counter++;
        });
    }
    for (auto &th : threads) th.join();
    std::cout << counter << "\n";
}
