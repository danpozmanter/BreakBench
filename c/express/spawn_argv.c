// LEVEL: PLATFORM

#include <spawn.h>
#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>

extern char **environ;

int main(void) {
    int fds[2];
    pipe(fds);
    posix_spawn_file_actions_t actions;
    posix_spawn_file_actions_init(&actions);
    posix_spawn_file_actions_adddup2(&actions, fds[1], 1);
    posix_spawn_file_actions_addclose(&actions, fds[0]);
    char *argv[] = {"echo", "hi; touch /tmp/bb_x", NULL};
    pid_t pid;
    posix_spawnp(&pid, "echo", &actions, NULL, argv, environ);
    close(fds[1]);
    char buf[256];
    ssize_t n = read(fds[0], buf, sizeof buf);
    waitpid(pid, NULL, 0);
    fwrite(buf, 1, (size_t)n, stdout);
    return 0;
}
