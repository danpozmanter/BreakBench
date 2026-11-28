#include <cstdlib>
#include <cstring>
#include <iostream>
#include <span>
#include <string>
#include <vector>

int main(int argc, char **argv) {
    (void)argc;
    std::size_t claimed = std::strtoul(argv[1], nullptr, 10);
    std::vector<char> buf(64);
    std::memcpy(buf.data() + 2, "SECRET-KEY-0042", 15);
    std::memcpy(buf.data(), "hi", 2);
    std::span<const char> payload(buf.data(), 2);
    // CONTROL! if (claimed > payload.size()) { std::cout << "invalid\n"; return 0; }
    std::span<const char> reply = payload.first(claimed);
    std::cout << std::string(reply.begin(), reply.end()) << "\n";
}
