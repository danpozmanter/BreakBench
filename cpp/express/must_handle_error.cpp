// LEVEL: LANGUAGE

#include <iostream>

[[nodiscard]] static int save() { return -1; }

int main() {
    save(); // REJECT!
    if (save() != 0) std::cout << "handled\n";
}
