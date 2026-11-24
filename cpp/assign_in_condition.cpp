#include <iostream>
#include <string>

int main(int, char **argv) {
    int x = std::stoi(argv[1]);
    if (x = 1) { // CONTROL! if (x == 1) {
        std::cout << "one\n";
    } else {
        std::cout << "not one\n";
    }
}
