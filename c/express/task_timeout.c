// LEVEL: STD

#include <stdio.h>
#include <stdlib.h>
#include <threads.h>
#include <time.h>

static mtx_t lock;
static cnd_t done_cv;
static int done;

static int slow(void *arg) {
    (void)arg;
    thrd_sleep(&(struct timespec){.tv_sec = 5}, NULL);
    mtx_lock(&lock);
    done = 1;
    cnd_signal(&done_cv);
    mtx_unlock(&lock);
    return 0;
}

int main(void) {
    mtx_init(&lock, mtx_plain);
    cnd_init(&done_cv);
    thrd_t t;
    thrd_create(&t, slow, NULL);
    struct timespec deadline;
    timespec_get(&deadline, TIME_UTC);
    deadline.tv_nsec += 100000000;
    if (deadline.tv_nsec >= 1000000000) { deadline.tv_sec++; deadline.tv_nsec -= 1000000000; }
    mtx_lock(&lock);
    int r = thrd_success;
    while (!done && r == thrd_success) r = cnd_timedwait(&done_cv, &lock, &deadline);
    mtx_unlock(&lock);
    puts(done ? "done" : "timed out");
    exit(0);
}
