// LEVEL: PLATFORM

#include <spawn.h>
#include <sys/wait.h>

#include <iostream>
#include <string>

extern char **environ;

int main() {
    std::string prog = "false";
    char *argv[] = {prog.data(), nullptr};
    pid_t pid;
    posix_spawnp(&pid, "false", nullptr, nullptr, argv, environ);
    int status;
    waitpid(pid, &status, 0);
    std::cout << WEXITSTATUS(status) << "\n";
}
