// LEVEL: STD

#include <chrono>
#include <iostream>

int main() {
    using namespace std::chrono;
    auto total = duration_cast<milliseconds>(duration<double>(1.5) + milliseconds(500));
    int n = 5;
    auto wrong = milliseconds(500) + n; // REJECT!
    std::cout << total.count() << "\n";
}
