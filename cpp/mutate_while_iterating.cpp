#include <algorithm>
#include <iostream>
#include <vector>

int main() {
    std::vector<int> xs{1, 2, 2, 3};
    for (int x : xs) { // CONTROL! {
        if (x == 2) xs.erase(std::find(xs.begin(), xs.end(), x)); // CONTROL! xs.erase(std::remove(xs.begin(), xs.end(), 2), xs.end());
    }
    for (size_t i = 0; i < xs.size(); i++) std::cout << (i ? "," : "") << xs[i];
    std::cout << "\n";
}
