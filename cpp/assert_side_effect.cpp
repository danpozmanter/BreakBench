#include <cassert>
#include <iostream>
#include <vector>

static int take_last(std::vector<int> &jobs) {
    int last = jobs.back();
    jobs.pop_back();
    return last;
}

int main() {
    std::vector<int> jobs{1, 2, 3};
    assert(take_last(jobs) == 3); // CONTROL! int last = take_last(jobs); assert(last == 3); (void)last;
    std::cout << jobs.size() << "\n";
}
