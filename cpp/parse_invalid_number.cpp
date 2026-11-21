#include <iostream>
#include <string>

int main(int, char **argv) {
    int n = std::stoi(argv[1]);
    std::cout << n + 1 << "\n";
}
