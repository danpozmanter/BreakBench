#include <functional>
#include <iostream>
#include <vector>

int main() {
    std::vector<std::function<int()>> fs;
    for (int i = 0; i < 3; i++) fs.push_back([i] { return i; });
    for (size_t i = 0; i < fs.size(); i++) std::cout << (i ? "," : "") << fs[i]();
    std::cout << "\n";
}
