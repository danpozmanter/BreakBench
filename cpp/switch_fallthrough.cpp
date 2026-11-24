#include <iostream>
#include <string>

int main(int, char **argv) {
    int n = std::stoi(argv[1]);
    std::string name;
    switch (n) {
    case 1:
        name = "one";
        // CONTROL! break;
    case 2:
        name = "two";
        break;
    default:
        name = "other";
    }
    std::cout << name << "\n";
}
