#include <iostream>

static long total(long a, long b) {
    return // CONTROL! return a + b;
        a + b; // BREAK!
}

int main() {
    std::cout << total(2, 3) << "\n";
}
