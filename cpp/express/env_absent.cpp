// LEVEL: STD

#include <cstdlib>
#include <iostream>

int main() {
    std::cout << (std::getenv("BB_UNSET") == nullptr ? "absent" : "present") << "\n";
}
