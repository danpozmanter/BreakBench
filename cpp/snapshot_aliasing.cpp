#include <iostream>
#include <vector>

static void apply_update(std::vector<int> &weights) {
    weights[1] = 5;
    weights[3] = 0;
}

int main() {
    std::vector<int> weights{3, 3, 3, 3};
    auto before = weights;
    apply_update(weights);
    int changes = 0;
    for (size_t i = 0; i < weights.size(); i++) {
        if (before[i] != weights[i]) changes++;
    }
    std::cout << changes << "\n";
}
