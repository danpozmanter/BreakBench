#include <format>
#include <iostream>

int main() {
    int done = 3;
    int total = 5;
    std::cout << std::format("{} of {}", done) << "\n"; // CONTROL! std::cout << std::format("{} of {}", done, total) << "\n";
}
