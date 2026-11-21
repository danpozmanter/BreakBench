#include <chrono>
#include <iostream>
#include <mutex>
#include <thread>

static std::mutex a, b;

static void transfer(std::mutex &first, std::mutex &second) {
    std::lock_guard<std::mutex> g1(first);
    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    std::lock_guard<std::mutex> g2(second);
}

int main() {
    std::thread t1(transfer, std::ref(a), std::ref(b));
    std::thread t2(transfer, std::ref(b), std::ref(a));
    t1.join();
    t2.join();
    std::cout << "finished\n";
}
