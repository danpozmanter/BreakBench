#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

static std::string request = "not json";

static void process(long id) {
    std::vector<char> buf(4096);
    std::snprintf(buf.data(), buf.size(), "%s#%ld", request.c_str(), id);
    if (buf[0] != '{') throw std::runtime_error("invalid request");
}

int main(int, char **argv) {
    long n = std::stol(argv[1]);
    long failures = 0;
    for (long i = 0; i < n; i++) {
        try {
            process(i);
        } catch (const std::exception &) {
            failures++;
        }
    }
    std::cout << (failures == n ? "done" : "unexpected") << "\n";
}
