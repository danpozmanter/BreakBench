#include <iostream>
#include <string>
#include <vector>

int main(int, char **argv) {
    std::size_t n = std::stoull(argv[1]);
    // CONTROL! if (n > (std::size_t{1} << 30)) { std::cout << "too large\n"; return 0; }
    std::vector<unsigned char> buf(n);
    buf[n - 1] = 1;
    std::cout << buf.size() << "\n";
}
