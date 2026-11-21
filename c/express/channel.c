// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <threads.h>
#include <unistd.h>

static int fds[2];

static int work(void *arg) {
    (void)arg;
    for (int v = 1; v <= 3; v++) write(fds[1], &v, sizeof v);
    return 0;
}

int main(void) {
    pipe(fds);
    thrd_t t;
    thrd_create(&t, work, NULL);
    int got[3];
    for (int i = 0; i < 3; i++) read(fds[0], &got[i], sizeof got[i]);
    thrd_join(t, NULL);
    printf("%d %d %d\n", got[0], got[1], got[2]);
    return 0;
}
