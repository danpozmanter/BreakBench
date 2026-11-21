// LEVEL: LANGUAGE

#include <algorithm>
#include <iostream>
#include <vector>

struct Point { int x; int y; };

int main() {
    std::vector<int> xs{3, 1, 2};
    std::ranges::sort(xs);
    std::vector<Point> ps{{1, 2}}; std::ranges::sort(ps); // REJECT!
    std::cout << xs[0] << "\n";
}
