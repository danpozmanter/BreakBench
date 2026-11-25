#include <iostream>
#include <vector>

int main() {
    std::vector<std::vector<int>> grid(3, std::vector<int>(3, 0));
    grid[0][0] = 1;
    int ones = 0;
    for (const auto &row : grid)
        for (int cell : row)
            if (cell == 1) ++ones;
    std::cout << ones << "\n";
}
