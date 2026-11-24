#include <cstdlib>
#include <filesystem>
#include <iostream>
#include <string>
// CONTROL! #include <spawn.h>
// CONTROL! #include <sys/wait.h>

int main(int, char **argv) {
    std::filesystem::remove("/tmp/bb_pwned");
    std::string cmd = std::string("echo ") + argv[1] + " > /dev/null"; // CONTROL! pid_t pid; char *av[] = {const_cast<char *>("echo"), argv[1], nullptr}; extern char **environ;
    int rc = std::system(cmd.c_str()); // CONTROL! int rc = posix_spawnp(&pid, "echo", nullptr, nullptr, av, environ); waitpid(pid, nullptr, 0);
    (void)rc;
    std::cout << (std::filesystem::exists("/tmp/bb_pwned") ? "injected" : "safe") << "\n";
}
