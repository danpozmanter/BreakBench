// LEVEL: STD

#include <chrono>
#include <future>
#include <iostream>
#include <thread>

int main() {
    auto task = std::async(std::launch::async, [] {
        std::this_thread::sleep_for(std::chrono::milliseconds(50));
        return 7;
    });
    std::cout << "started\n";
    std::cout << task.get() << "\n";
}
