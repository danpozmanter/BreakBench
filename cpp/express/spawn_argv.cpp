// LEVEL: PLATFORM

#include <spawn.h>
#include <sys/wait.h>
#include <unistd.h>

#include <iostream>
#include <string>

extern char **environ;

int main() {
    int fds[2];
    pipe(fds);
    posix_spawn_file_actions_t actions;
    posix_spawn_file_actions_init(&actions);
    posix_spawn_file_actions_adddup2(&actions, fds[1], 1);
    posix_spawn_file_actions_addclose(&actions, fds[0]);
    std::string prog = "echo", arg = "hi; touch /tmp/bb_x";
    char *argv[] = {prog.data(), arg.data(), nullptr};
    pid_t pid;
    posix_spawnp(&pid, "echo", &actions, nullptr, argv, environ);
    close(fds[1]);
    char buf[256];
    ssize_t n = read(fds[0], buf, sizeof buf);
    waitpid(pid, nullptr, 0);
    std::cout << std::string(buf, static_cast<size_t>(n));
}
