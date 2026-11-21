#include <iostream>
#include <string>

int main(int, char **argv) {
    int n = std::stoi(argv[1]);
    int x;
    if (n > 5) x = 10;
    std::cout << x << "\n";
}
