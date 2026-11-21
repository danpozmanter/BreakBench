#include <algorithm>
#include <iostream>
#include <vector>

int main() {
    std::vector<int> xs{1, 2, 2, 3};
    for (int x : xs) {
        if (x == 2) xs.erase(std::find(xs.begin(), xs.end(), x));
    }
    for (size_t i = 0; i < xs.size(); i++) std::cout << (i ? "," : "") << xs[i];
    std::cout << "\n";
}
