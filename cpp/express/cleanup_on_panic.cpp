// LEVEL: LANGUAGE

#include <iostream>
#include <stdexcept>

struct Guard { ~Guard() { std::cout << "cleanup\n"; } };

void work() {
    Guard g;
    throw std::runtime_error("boom");
}

int main() {
    try { work(); } catch (...) { std::cout << "recovered\n"; }
}
