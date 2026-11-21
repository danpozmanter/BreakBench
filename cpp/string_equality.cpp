#include <iostream>
#include <string>

int main(int, char **argv) {
    std::string s = std::string("ab") + argv[1];
    std::cout << (s == "abc" ? "equal" : "different") << "\n";
}
