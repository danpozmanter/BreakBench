// LEVEL: LANGUAGE

#include <iostream>

int main() {
    int id = 42;
    if (id == 42) std::cout << "match\n";
    if (id == "42") std::cout << "text\n"; // REJECT!
}
