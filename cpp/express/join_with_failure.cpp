// LEVEL: STD

#include <future>
#include <iostream>
#include <stdexcept>

int main() {
    auto task = std::async(std::launch::async, []() -> int { throw std::runtime_error("bad input"); });
    try {
        task.get();
    } catch (const std::exception &e) {
        std::cout << "worker failed: " << e.what() << "\n";
    }
}
