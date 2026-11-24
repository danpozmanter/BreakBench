#include <iostream>
#include <string>
#include <unordered_map>

int main(int, char **argv) {
    std::unordered_map<std::string, int> stock{{"apple", 3}, {"plum", 4}};
    std::string name = argv[1];
    std::cout << stock[name] + 5 << "\n"; // CONTROL! auto it = stock.find(name); if (it != stock.end()) std::cout << it->second + 5 << "\n"; else std::cout << "unknown\n";
}
