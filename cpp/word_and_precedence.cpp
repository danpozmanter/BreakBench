#include <iostream>
#include <string>

int main(int, char **argv) {
    bool ready = std::string(argv[1]) == "yes";
    bool approved = std::string(argv[2]) == "yes";
    bool ok;
    ok = ready and approved;
    std::cout << (ok ? "go" : "wait") << "\n";
}
