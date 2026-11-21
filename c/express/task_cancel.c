// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <pthread.h>
#include <stdio.h>
#include <time.h>

static void *spin(void *arg) {
    (void)arg;
    for (;;) {
        pthread_testcancel();
        nanosleep(&(struct timespec){.tv_nsec = 1000000}, NULL);
    }
    return NULL;
}

int main(void) {
    pthread_t t;
    pthread_create(&t, NULL, spin, NULL);
    nanosleep(&(struct timespec){.tv_nsec = 20000000}, NULL);
    pthread_cancel(t);
    void *result;
    pthread_join(t, &result);
    if (result == PTHREAD_CANCELED) puts("stopped");
    return 0;
}
