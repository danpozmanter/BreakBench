#include <algorithm>
#include <cmath>
#include <iostream>
#include <limits>
#include <vector>

int main() {
    const double nan = std::numeric_limits<double>::quiet_NaN();
    std::vector<double> xs{5, nan, 3, 1, nan, 4, 2};
    std::sort(xs.begin(), xs.end()); // CONTROL! xs.erase(std::remove_if(xs.begin(), xs.end(), [](double v) { return std::isnan(v); }), xs.end()); std::sort(xs.begin(), xs.end());
    double prev = -INFINITY;
    bool ordered = true;
    for (double x : xs) {
        if (std::isnan(x)) continue;
        if (x < prev) ordered = false;
        prev = x;
    }
    std::cout << (ordered ? "ordered" : "unordered") << "\n";
}
