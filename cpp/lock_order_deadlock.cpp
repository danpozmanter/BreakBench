#include <barrier>
#include <iostream>
#include <mutex>
#include <thread>

static std::mutex a, b;
static std::barrier both_locked(2);

static void transfer(std::mutex &first, std::mutex &second) {
    std::lock_guard<std::mutex> g1(first);
    both_locked.arrive_and_wait(); // BREAK!
    std::lock_guard<std::mutex> g2(second);
}

int main() {
    std::thread t1(transfer, std::ref(a), std::ref(b));
    std::thread t2(transfer, std::ref(b), std::ref(a)); // CONTROL! std::thread t2(transfer, std::ref(a), std::ref(b));
    t1.join();
    t2.join();
    std::cout << "finished\n";
}
