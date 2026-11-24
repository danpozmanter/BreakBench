#include <iostream>
#include <string>
#include <vector>

int main(int, char **argv) {
    std::vector<int> xs{1, 2, 3};
    long i = std::stol(argv[1]);
    if (i < xs.size()) { // CONTROL! if (i < static_cast<long>(xs.size())) {
        std::cout << "less\n";
    } else {
        std::cout << "not less\n";
    }
}
