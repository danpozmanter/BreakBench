// LEVEL: STD

#include <future>
#include <iostream>
#include <stdexcept>

int main() {
    auto task = std::async(std::launch::async, [] { throw std::runtime_error("boom"); });
    try { task.get(); } catch (...) { std::cout << "worker crashed\n"; }
}
