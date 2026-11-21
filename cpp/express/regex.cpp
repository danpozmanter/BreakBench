// LEVEL: STD

#include <iostream>
#include <regex>

int main() {
    std::regex re("^[a-z]+[0-9]{2}$");
    std::cout << std::boolalpha << std::regex_match("abc12", re) << " " << std::regex_match("abc1", re) << "\n";
}
