// LEVEL: PLATFORM

#include <csignal>
#include <ctime>
#include <iostream>
#include <spawn.h>
#include <sys/wait.h>

extern char **environ;

int main() {
    char arg0[] = "sleep", arg1[] = "10";
    char *argv[] = {arg0, arg1, nullptr};
    pid_t pid;
    if (posix_spawnp(&pid, "sleep", nullptr, nullptr, argv, environ) != 0) return 1;
    timespec pause{0, 100000000};
    nanosleep(&pause, nullptr);
    kill(pid, SIGKILL);
    int status = 0;
    waitpid(pid, &status, 0);
    std::cout << (WIFSIGNALED(status) ? "killed" : "finished") << "\n";
}
