// LEVEL: STD

#include <iostream>
#include <string>
#include <tuple>

std::tuple<int, std::string> pair() { return {1, "a"}; }

int main() {
    auto [n, s] = pair();
    std::cout << n << " " << s << "\n";
}
