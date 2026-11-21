#include <algorithm>
#include <iostream>
#include <vector>

int main() {
    std::vector<int> scores{10, 9, 1};
    std::sort(scores.begin(), scores.end());
    std::cout << scores[0] << " " << scores[1] << " " << scores[2] << "\n";
}
