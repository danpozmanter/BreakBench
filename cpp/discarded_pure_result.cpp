#include <algorithm>
#include <cctype>
#include <iostream>
#include <string>

int main() {
    std::string name = "ada";
    std::transform(name.begin(), name.end(), name.begin(),
                   [](unsigned char c) { return static_cast<char>(std::toupper(c)); });
    std::cout << name << "\n";
}
