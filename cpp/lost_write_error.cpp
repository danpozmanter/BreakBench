#include <fstream>
#include <iostream>

int main() {
    {
        std::ofstream f("/dev/full");
        f << "data\n";
    } // CONTROL! f.close(); if (!f) { std::cout << "failed\n"; return 0; } }
    std::cout << "saved\n";
}
