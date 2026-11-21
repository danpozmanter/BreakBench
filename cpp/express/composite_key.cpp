// LEVEL: STD

#include <iostream>
#include <set>
#include <utility>

int main() {
    std::set<std::pair<int, int>> s{{1, 2}};
    std::cout << std::boolalpha << s.contains({1, 2}) << "\n";
}
