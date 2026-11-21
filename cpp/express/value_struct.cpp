// LEVEL: LANGUAGE

#include <iostream>

struct P { int x; };

int main() {
    P a{1};
    P b = a;
    b.x = 9;
    std::cout << a.x << "\n";
}
