#include <iostream>
#include <string>

int main(int, char **argv) {
    std::string name = "a👍b";
    auto n = std::stoul(argv[1]);
    std::cout << name.substr(0, n) << "\n";
}
