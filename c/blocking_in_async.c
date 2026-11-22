#define _POSIX_C_SOURCE 200809L

#include <pthread.h>
#include <stdio.h>
#include <time.h>

static void *job(void *arg) {
    (void)arg;
    struct timespec d = {0, 500000000};
    nanosleep(&d, NULL);
    return NULL;
}

int main(void) {
    struct timespec a, b;
    clock_gettime(CLOCK_MONOTONIC, &a);
    pthread_t t1, t2;
    pthread_create(&t1, NULL, job, NULL);
    pthread_create(&t2, NULL, job, NULL);
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);
    clock_gettime(CLOCK_MONOTONIC, &b);
    long ms = (b.tv_sec - a.tv_sec) * 1000 + (b.tv_nsec - a.tv_nsec) / 1000000;
    puts(ms < 800 ? "concurrent" : "serial");
    return 0;
}
