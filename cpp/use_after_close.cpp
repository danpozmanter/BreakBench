#include <fstream>
#include <iostream>

int main() {
    std::ofstream f("/tmp/bb_close.txt");
    if (!(f << "a")) {
        std::cerr << "write failed\n";
        return 1;
    }
    f.close();
    if (!(f << "b")) {
        std::cerr << "write failed\n";
        return 1;
    }
    std::cout << "ok\n";
}
