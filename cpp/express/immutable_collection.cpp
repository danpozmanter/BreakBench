// LEVEL: LANGUAGE

#include <iostream>
#include <vector>

int main() {
    const std::vector<int> xs{1, 2, 3};
    xs.push_back(4); // REJECT!
    std::cout << xs.size() << "\n";
}
