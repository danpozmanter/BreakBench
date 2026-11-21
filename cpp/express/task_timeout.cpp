// LEVEL: STD

#include <chrono>
#include <cstdlib>
#include <future>
#include <iostream>
#include <thread>

int main() {
    std::promise<int> p;
    auto answer = p.get_future();
    std::thread([p = std::move(p)]() mutable {
        std::this_thread::sleep_for(std::chrono::seconds(5));
        p.set_value(1);
    }).detach();
    if (answer.wait_for(std::chrono::milliseconds(100)) == std::future_status::timeout) {
        std::cout << "timed out" << std::endl;
    }
    std::exit(0);
}
