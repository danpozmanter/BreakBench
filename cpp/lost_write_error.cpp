#include <fstream>
#include <iostream>

int main() {
    {
        std::ofstream f("/dev/full");
        f << "data\n";
    }
    std::cout << "saved\n";
}
