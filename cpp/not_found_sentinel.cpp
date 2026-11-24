#include <iostream>
#include <string>

int main(int, char **argv) {
    std::string line = argv[1];
    auto pos = line.find(':');
    std::cout << line.substr(pos + 1) << "\n"; // CONTROL! std::cout << (pos == std::string::npos ? std::string("no colon") : line.substr(pos + 1)) << "\n";
}
