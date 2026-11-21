// LEVEL: LANGUAGE

#include <iostream>
#include <vector>

static std::size_t count(const std::vector<int> &xs) {
    xs[0] = 9; // REJECT!
    return xs.size();
}

int main() {
    std::vector<int> xs{1, 2, 3};
    std::cout << count(xs) << "\n";
}
