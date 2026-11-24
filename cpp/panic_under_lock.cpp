#include <iostream>
#include <mutex>
#include <stdexcept>
#include <thread>

static std::mutex lock;
static long debits, credits;

static void post() {
    std::lock_guard<std::mutex> guard(lock);
    debits += 50;
    if (debits > 0) throw std::runtime_error("crash mid-update"); // CONTROL! if (debits > 0) { debits -= 50; return; }
    credits += 50;
}

int main() {
    std::thread worker(post);
    worker.join();
    std::lock_guard<std::mutex> guard(lock);
    std::cout << (debits == credits ? "balanced" : "unbalanced") << "\n";
}
