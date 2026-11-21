#include <iostream>
#include <string>

int main() {
    std::string s;
    std::cout << ((!s.empty()) & (s[0] == 'a') ? "yes" : "no") << "\n"; // CONTROL! std::cout << (!s.empty() && s[0] == 'a' ? "yes" : "no") << "\n";
}
