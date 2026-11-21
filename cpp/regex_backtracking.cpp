#include <iostream>
#include <regex>
#include <string>

int main(int, char **argv) {
    std::regex re("^(a+)+$");
    std::cout << (std::regex_match(std::string(argv[1]), re) ? "match" : "no match") << "\n";
}
