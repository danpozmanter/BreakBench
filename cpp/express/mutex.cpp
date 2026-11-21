// LEVEL: STD

#include <iostream>
#include <mutex>
#include <thread>

int main() {
    std::mutex lock;
    long counter = 0;
    auto work = [&] {
        for (int i = 0; i < 100000; i++) {
            std::lock_guard guard(lock);
            counter++;
        }
    };
    std::thread a(work), b(work);
    a.join();
    b.join();
    std::cout << counter << "\n";
}
