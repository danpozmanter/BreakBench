#include <iostream>
#include <thread>

int main() {
    long count = 0;
    auto add = [&] { for (int i = 0; i < 1000000; i++) count++; };
    std::thread a(add), b(add);
    a.join();
    b.join();
    std::cout << count << "\n";
}
