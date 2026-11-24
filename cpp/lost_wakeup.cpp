#include <condition_variable>
#include <iostream>
#include <mutex>
#include <thread>

int main() {
    std::mutex lock;
    std::condition_variable woken;
    // CONTROL! bool ready = false;
    {
        std::lock_guard<std::mutex> guard(lock);
        woken.notify_one(); // CONTROL! ready = true; woken.notify_one();
    }
    std::thread worker([&] {
        std::unique_lock<std::mutex> guard(lock);
        woken.wait(guard); // CONTROL! woken.wait(guard, [&] { return ready; });
        std::cout << "done\n";
    });
    worker.join();
}
