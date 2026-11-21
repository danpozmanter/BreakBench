#include <iostream>
#include <string>
#include <unordered_map>

int main(int, char **argv) {
    std::unordered_map<std::string, int> stock{{"apple", 3}, {"plum", 4}};
    std::string name = argv[1];
    std::cout << stock[name] + 5 << "\n";
}
