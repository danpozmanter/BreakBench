// LEVEL: STD

#include <chrono>
#include <iostream>
#include <thread>

int main() {
    std::jthread worker([](std::stop_token stop) {
        while (!stop.stop_requested()) std::this_thread::sleep_for(std::chrono::milliseconds(1));
    });
    std::this_thread::sleep_for(std::chrono::milliseconds(20));
    worker.request_stop();
    worker.join();
    std::cout << "stopped\n";
}
