#include <iostream>
#include <string>

int main(int, char **argv) {
    int x = std::stoi(argv[1]);
    bool inside = 1 < x < 3; // BREAK!
    // CONTROL! bool inside = 1 < x && x < 3;
    std::cout << (inside ? "inside" : "outside") << "\n";
}
