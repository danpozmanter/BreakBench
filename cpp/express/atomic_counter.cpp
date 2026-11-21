// LEVEL: STD

#include <atomic>
#include <iostream>
#include <thread>

int main() {
    std::atomic<long> counter{0};
    auto work = [&] { for (int i = 0; i < 100000; i++) counter++; };
    std::thread a(work), b(work);
    a.join();
    b.join();
    std::cout << counter << "\n";
}
