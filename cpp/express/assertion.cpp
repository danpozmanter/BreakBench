// LEVEL: STD

#include <cassert>
#include <iostream>

int main() {
    std::cout << "before" << std::endl;
    assert(1 + 1 == 3);
    std::cout << "after\n";
}
