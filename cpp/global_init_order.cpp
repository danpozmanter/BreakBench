#include <iostream>
#include <string>

long base();

long limit = base() * 2; // BREAK!
long base_value = std::stol("10");
// CONTROL! long limit = base() * 2;

long base() { return base_value; }

int main() {
    std::cout << limit << "\n";
}
