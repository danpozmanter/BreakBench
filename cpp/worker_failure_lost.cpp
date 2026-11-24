#include <iostream>
#include <string>
#include <thread>
#include <vector>

int main(int argc, char **argv) {
    std::vector<std::string> args(argv + 1, argv + argc);
    long total = 0;
    // CONTROL! bool failed = false;
    std::thread worker([&] {
        for (const auto &a : args) total += std::stol(a); // CONTROL! try { for (const auto &a : args) total += std::stol(a); } catch (const std::exception &) { failed = true; }
    });
    worker.join();
    std::cout << "total " << total << "\n"; // CONTROL! if (failed) std::cout << "failed\n"; else std::cout << "total " << total << "\n";
}
