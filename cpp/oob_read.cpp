#include <array>
#include <iostream>
#include <string>

struct Frame { std::array<int, 4> buf; int secret; };

int main(int, char **argv) {
    Frame f{{1, 2, 3, 4}, 42};
    int idx = std::stoi(argv[1]);
    std::cout << f.buf[idx] << "\n";
}
