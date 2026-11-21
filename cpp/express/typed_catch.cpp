// LEVEL: LANGUAGE

#include <iostream>
#include <stdexcept>

struct KindA : std::runtime_error { KindA() : std::runtime_error("A") {} };
struct KindB : std::runtime_error { KindB() : std::runtime_error("B") {} };

void step(bool a) {
    try {
        if (a) throw KindA(); else throw KindB();
    } catch (const KindA &) {
        std::cout << "caught A\n";
    }
}

int main() {
    step(true);
    try { step(false); } catch (const KindB &) { std::cout << "passed B\n"; }
}
