// LEVEL: PLATFORM

#include <spawn.h>
#include <stdio.h>
#include <sys/wait.h>

extern char **environ;

int main(void) {
    char *argv[] = {"false", NULL};
    pid_t pid;
    posix_spawnp(&pid, "false", NULL, NULL, argv, environ);
    int status;
    waitpid(pid, &status, 0);
    printf("%d\n", WEXITSTATUS(status));
    return 0;
}
