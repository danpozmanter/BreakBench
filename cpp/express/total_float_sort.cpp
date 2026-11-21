// LEVEL: STD

#include <algorithm>
#include <cmath>
#include <compare>
#include <iostream>
#include <vector>

int main() {
    std::vector<double> xs{3, NAN, 1, 2};
    std::ranges::sort(xs, [](double a, double b) { return std::strong_order(a, b) < 0; });
    const char *sep = "";
    for (double x : xs) {
        std::cout << sep;
        if (std::isnan(x)) std::cout << "NaN"; else std::cout << x;
        sep = " ";
    }
    std::cout << "\n";
}
