#include <cstdlib>
#include <filesystem>
#include <iostream>
#include <string>

int main(int, char **argv) {
    std::filesystem::remove("/tmp/bb_pwned");
    std::string cmd = std::string("echo ") + argv[1] + " > /dev/null";
    int rc = std::system(cmd.c_str());
    (void)rc;
    std::cout << (std::filesystem::exists("/tmp/bb_pwned") ? "injected" : "safe") << "\n";
}
