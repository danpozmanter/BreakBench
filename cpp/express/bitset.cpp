// LEVEL: STD

#include <bitset>
#include <iostream>

int main() {
    std::bitset<1024> b;
    b.set(1000);
    std::cout << std::boolalpha << b.test(1000) << " " << b.test(999) << "\n";
}
