#include <chrono>
#include <future>
#include <iostream>
#include <mutex>

std::mutex balance_lock;
int balance = 100;

void charge(std::shared_future<void> gate) {
    gate.wait();
    std::lock_guard<std::mutex> guard(balance_lock);
    balance -= 30;
}

int main() {
    std::promise<void> open_gate;
    std::shared_future<void> gate = open_gate.get_future().share();
    std::future<void> attempt = std::async(std::launch::async, charge, gate);
    if (attempt.wait_for(std::chrono::milliseconds(100)) == std::future_status::timeout) {
        open_gate.set_value();
        charge(gate); // BREAK!
    }
    attempt.get();
    std::cout << balance << "\n";
}
