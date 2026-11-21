// LEVEL: STD

#include <iostream>
#include <new>
#include <string>

int main(int argc, char **argv) {
    (void)argc;
    std::size_t n = std::stoull(argv[1]);
    char *p = new (std::nothrow) char[n];
    std::cout << (p == nullptr ? "allocation failed" : "allocated") << "\n";
    delete[] p;
}
