#include <algorithm>
#include <iostream>
#include <string>
#include <vector>

int main(int argc, char **argv) {
    (void)argc;
    const std::vector<int> ids{10, 20, 30};
    const std::string id = argv[1];
    std::cout << (std::ranges::contains(ids, id) ? "found" : "missing") << "\n"; // CONTROL! std::cout << (std::ranges::contains(ids, std::stoi(id)) ? "found" : "missing") << "\n";
}
