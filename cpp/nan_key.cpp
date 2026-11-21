#include <iostream>
#include <string>
#include <unordered_set>

int main() {
    double a = std::stod("nan");
    double b = std::stod("nan");
    std::unordered_set<double> s{a};
    std::cout << (s.contains(b) ? "found" : "missing") << "\n";
}
