#include <iostream>
#include <string>
#include <vector>

int main() {
    std::vector<std::string> names = {
        "alice",
        "bob" // CONTROL! "bob",
        "carol",
    };
    std::cout << names.size() << "\n";
}
