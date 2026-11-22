#include <chrono>
#include <future>
#include <iostream>
#include <thread>

int main() {
    auto start = std::chrono::steady_clock::now();
    auto job = [] { std::this_thread::sleep_for(std::chrono::milliseconds(500)); };
    auto a = std::async(job);
    auto b = std::async(job);
    a.get();
    b.get();
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - start).count();
    std::cout << (ms < 800 ? "concurrent" : "serial") << "\n";
}
