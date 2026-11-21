// LEVEL: STD

#include <signal.h>
#include <stdio.h>

static volatile sig_atomic_t stop;

static void on_term(int sig) {
    (void)sig;
    stop = 1;
}

int main(void) {
    signal(SIGTERM, on_term);
    raise(SIGTERM);
    if (stop) puts("cleaned up");
    return 0;
}
