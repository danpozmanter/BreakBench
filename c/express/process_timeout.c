// LEVEL: PLATFORM

#include <signal.h>
#include <spawn.h>
#include <stdio.h>
#include <sys/wait.h>
#include <time.h>

extern char **environ;

int main(void) {
    char arg0[] = "sleep", arg1[] = "10";
    char *argv[] = {arg0, arg1, NULL};
    pid_t pid;
    if (posix_spawnp(&pid, "sleep", NULL, NULL, argv, environ) != 0) return 1;
    struct timespec pause = {0, 100000000};
    nanosleep(&pause, NULL);
    kill(pid, SIGKILL);
    int status;
    waitpid(pid, &status, 0);
    puts(WIFSIGNALED(status) ? "killed" : "finished");
    return 0;
}
