#include <filesystem>
#include <fstream>
#include <generator>
#include <iostream>
#include <string>

const std::string lock_path = "/tmp/bb_scratch/reader.lock";

struct Lock {
    Lock() { std::ofstream(lock_path).close(); }
    ~Lock() { std::filesystem::remove(lock_path); }
};

std::generator<std::string> rows() {
    Lock lock;
    co_yield "alpha";
    co_yield "beta";
    co_yield "gamma";
}

int main() {
    for (const std::string &line : rows()) {
        std::cout << line << "\n";
        break;
    }
}
