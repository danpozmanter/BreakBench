#include <barrier>
#include <iostream>
#include <mutex>
#include <thread>

static std::mutex lock;
static std::barrier checked(2);
static bool claimed = false;
static int winners = 0;

static void claim() {
    bool available;
    {
        std::lock_guard<std::mutex> guard(lock);
        available = !claimed; // BREAK!
    }
    // CONTROL! { std::lock_guard<std::mutex> guard(lock); available = !claimed; if (available) claimed = true; }
    checked.arrive_and_wait();
    if (available) {
        std::lock_guard<std::mutex> guard(lock);
        claimed = true;
        winners++;
    }
}

int main() {
    std::thread a(claim), b(claim);
    a.join(); b.join();
    std::cout << winners << "\n";
}
