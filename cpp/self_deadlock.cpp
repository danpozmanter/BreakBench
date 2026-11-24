#include <iostream>
#include <mutex>

static std::mutex lock;
static int balance;

static void deposit(int amount) {
    std::lock_guard<std::mutex> guard(lock);
    balance += amount;
}

int main() {
    std::lock_guard<std::mutex> guard(lock); // BREAK!
    deposit(10);
    std::cout << "done\n";
}
