#include <iostream>
#include <string>

static bool is_admin(const std::string& user) { return user == "root"; }
static bool is_аdmin(const std::string&) { return true; } // BREAK!

int main() {
    const std::string user = "guest";
    std::cout << (is_admin("root") ? "admin" : "guest") << "\n";
    std::cout << (is_аdmin(user) ? "admin" : "guest") << "\n"; // CONTROL! std::cout << (is_admin(user) ? "admin" : "guest") << "\n";
}
