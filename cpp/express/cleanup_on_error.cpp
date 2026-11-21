// LEVEL: LANGUAGE

#include <iostream>
#include <stdexcept>

struct Resource { ~Resource() { std::cout << "released\n"; } };

void use(bool fail) {
    Resource r;
    if (fail) throw std::runtime_error("bad");
}

int main() {
    use(false);
    try { use(true); } catch (...) {}
}
