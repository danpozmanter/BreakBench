#include <iostream>

struct Config { int timeout; int retries; };

int main() {
    Config c{.timeout = 30}; // CONTROL! Config c{.timeout = 30, .retries = 3};
    std::cout << c.retries << "\n";
}
