#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
// CONTROL! #include <spawn.h>
// CONTROL! #include <sys/wait.h>

int main(int argc, char **argv) {
    (void)argc;
    char cmd[256];
    remove("/tmp/bb_pwned");
    snprintf(cmd, sizeof cmd, "echo %s > /dev/null", argv[1]); // CONTROL! pid_t pid; char *av[] = {"echo", argv[1], NULL}; extern char **environ;
    int rc = system(cmd); // CONTROL! int rc = posix_spawnp(&pid, "echo", NULL, NULL, av, environ); waitpid(pid, NULL, 0);
    (void)rc;
    puts(access("/tmp/bb_pwned", F_OK) == 0 ? "injected" : "safe");
    return 0;
}
