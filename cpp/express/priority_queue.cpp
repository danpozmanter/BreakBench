// LEVEL: STD

#include <functional>
#include <iostream>
#include <queue>
#include <vector>

int main() {
    std::priority_queue<int, std::vector<int>, std::greater<int>> q;
    for (int v : {3, 1, 2}) q.push(v);
    const char *sep = "";
    while (!q.empty()) { std::cout << sep << q.top(); q.pop(); sep = " "; }
    std::cout << "\n";
}
