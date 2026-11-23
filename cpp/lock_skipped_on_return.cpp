#include <iostream>
#include <mutex>
#include <thread>

std::mutex account_lock;
int balance = 100;

void withdraw(int amount) {
    account_lock.lock();
    if (amount > balance) {
        return;
    }
    balance -= amount;
    account_lock.unlock();
}

int main() {
    withdraw(500);
    std::thread worker(withdraw, 30);
    worker.join();
    std::cout << balance << "\n";
}
