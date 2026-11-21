#include <iostream>
#include <string>
#include <vector>

int main(int, char **argv) {
    std::size_t n = std::stoull(argv[1]);
    std::vector<unsigned char> buf(n);
    buf[n - 1] = 1;
    std::cout << buf.size() << "\n";
}
