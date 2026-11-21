#include <iostream>
#include <set>
#include <unordered_set>
#include <vector>

int main() {
    std::unordered_set<std::vector<int>> seen; // CONTROL! std::set<std::vector<int>> seen;
    std::vector<int> key{1, 2};
    seen.insert(key);
    key[0] = 9;
    for (const auto &e : seen) {
        std::cout << (seen.count(e) ? "found" : "lost") << "\n";
    }
}
