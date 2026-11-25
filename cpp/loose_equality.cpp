#include <iostream>
#include <string>

int main(int, char **argv) {
    std::string code = argv[1];
    std::cout << (code == 0 ? "same" : "different") << "\n"; // CONTROL! std::cout << (code == "0" ? "same" : "different") << "\n";
}
