#include <cstdio>
#include <vector>

int main() {
    std::vector<int> values{3, 4};
    int sum = values[0] + values[1];
    int count = static_cast<int>(values.size());
    double avg = sum / count; // CONTROL! double avg = static_cast<double>(sum) / count;
    std::printf("%.1f\n", avg);
}
