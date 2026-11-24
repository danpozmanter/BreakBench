#include <iostream>
#include <string>

int main(int, char **argv) {
    int n = std::stoi(argv[1]);
    int x; // CONTROL! int x = 0;
    if (n > 5) x = 10;
    std::cout << x << "\n";
}
