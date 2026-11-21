// LEVEL: PLATFORM

#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

static void hook(int sig) {
    (void)sig;
    static const char msg[] = "hook ran\n";
    write(1, msg, sizeof msg - 1);
    _exit(1);
}

int main(void) {
    signal(SIGABRT, hook);
    abort();
}
