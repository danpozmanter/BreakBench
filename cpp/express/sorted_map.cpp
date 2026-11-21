// LEVEL: STD

#include <iostream>
#include <map>
#include <string>

int main() {
    std::map<std::string, int> m{{"c", 1}, {"a", 2}, {"b", 3}};
    std::string sep;
    for (const auto &[k, v] : m) { std::cout << sep << k; sep = " "; }
    std::cout << "\n";
}
