#include <fstream>
#include <iostream>
#include <string>

int main(int, char **argv) {
    long n = std::stol(argv[1]);
    std::ofstream("/tmp/bb_fd.txt") << "x";
    for (long i = 0; i < n; i++) {
        std::ifstream f("/tmp/bb_fd.txt");
        if (!f) {
            std::cerr << "open: too many open files\n";
            return 1;
        }
        f.get();
    }
    std::cout << "done\n";
}
