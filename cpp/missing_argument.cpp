#include <iostream>

static int area(int w, int h) { return w * h; }

int main() {
    std::cout << area(3) << "\n"; // BREAK!
    std::cout << area(3, 4) << "\n";
}
