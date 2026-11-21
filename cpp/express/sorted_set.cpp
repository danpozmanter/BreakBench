// LEVEL: STD

#include <iostream>
#include <set>

int main() {
    std::set<int> s{3, 1, 2};
    const char *sep = "";
    for (int v : s) { std::cout << sep << v; sep = " "; }
    std::cout << "\n";
}
