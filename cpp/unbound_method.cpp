#include <functional>
#include <iostream>

struct Counter {
    int count = 0;
    void increment() { ++count; }
};

static void run_twice(const std::function<void()> &f) {
    f();
    f();
}

int main() {
    Counter counter;
    run_twice(counter.increment); // CONTROL! run_twice([&] { counter.increment(); });
    std::cout << counter.count << "\n";
}
