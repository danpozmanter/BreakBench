#include <iostream>
#include <string>
#include <thread>
#include <vector>

int main(int argc, char **argv) {
    std::vector<std::string> args(argv + 1, argv + argc);
    long total = 0;
    std::thread worker([&] {
        for (const auto &a : args) total += std::stol(a);
    });
    worker.join();
    std::cout << "total " << total << "\n";
}
