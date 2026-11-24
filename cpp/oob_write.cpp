#include <array>
#include <iostream>
#include <string>

struct Frame { std::array<int, 4> buf; int guard; };

int main(int, char **argv) {
    Frame f{{0, 0, 0, 0}, 7};
    int idx = std::stoi(argv[1]);
    f.buf[idx] = 99; // CONTROL! if (idx >= 0 && idx < 4) f.buf[idx] = 99;
    std::cout << f.guard << "\n";
}
