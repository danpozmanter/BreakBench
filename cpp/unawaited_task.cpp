#include <atomic>
#include <chrono>
#include <future>
#include <iostream>
#include <thread>

static std::atomic<int> saved{0};

static void save() {
    std::this_thread::sleep_for(std::chrono::milliseconds(50));
    saved++;
}

int main() {
    auto pending = std::async(std::launch::async, save); // CONTROL! auto pending = std::async(std::launch::async, save); pending.wait();
    std::cout << saved.load() << "\n";
}
