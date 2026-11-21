#include <iostream>
#include <string>
#include <vector>

int main(int, char **argv) {
    std::vector<int> readings{10, 20, 30};
    int i = std::stoi(argv[1]);
    std::cout << readings[i] - readings[i - 1] << "\n";
}
