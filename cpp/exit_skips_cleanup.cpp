#include <cstdlib>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <string>

const std::string lock_path = "/tmp/bb_scratch/run.lock";

struct Lock {
    Lock() { std::ofstream(lock_path).close(); }
    ~Lock() { std::filesystem::remove(lock_path); }
};

bool check_args(int argc, char **argv) {
    for (int i = 1; i < argc; i++) {
        if (std::string(argv[i]) == "--version") {
            std::cout << "1.0" << std::endl;
            std::exit(0); // BREAK!
            // CONTROL! return true;
        }
    }
    return false;
}

int main(int argc, char **argv) {
    Lock lock;
    if (check_args(argc, argv)) return 0;
    std::cout << "working\n";
}
