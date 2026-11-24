#include <iostream>
#include <string>

int main(int, char **argv) {
    int n = std::stoi(argv[1]); // CONTROL! std::size_t pos = 0; int n = std::stoi(argv[1], &pos);
    std::cout << n + 1 << "\n"; // CONTROL! if (pos != std::string(argv[1]).size()) std::cout << "invalid\n"; else std::cout << n + 1 << "\n";
}
