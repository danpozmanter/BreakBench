#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <vector>

int main(int argc, char **argv) {
    std::vector<long> xs;
    for (int i = 1; i < argc; i++) xs.push_back(std::atol(argv[i]));
    std::cout << std::ranges::max(xs) + 1 << "\n"; // CONTROL! if (xs.empty()) std::cout << "no readings\n"; else std::cout << std::ranges::max(xs) + 1 << "\n";
}
