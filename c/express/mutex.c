// LEVEL: STD

#include <stdio.h>
#include <threads.h>

static mtx_t lock;
static long counter;

static int work(void *arg) {
    (void)arg;
    for (int i = 0; i < 100000; i++) {
        mtx_lock(&lock);
        counter++;
        mtx_unlock(&lock);
    }
    return 0;
}

int main(void) {
    mtx_init(&lock, mtx_plain);
    thrd_t a, b;
    thrd_create(&a, work, NULL);
    thrd_create(&b, work, NULL);
    thrd_join(a, NULL);
    thrd_join(b, NULL);
    printf("%ld\n", counter);
    return 0;
}
