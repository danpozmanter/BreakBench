// LEVEL: STD

#include <stdatomic.h>
#include <stdio.h>
#include <threads.h>

static atomic_long counter;

static int work(void *arg) {
    (void)arg;
    for (int i = 0; i < 100000; i++) atomic_fetch_add(&counter, 1);
    return 0;
}

int main(void) {
    thrd_t a, b;
    thrd_create(&a, work, NULL);
    thrd_create(&b, work, NULL);
    thrd_join(a, NULL);
    thrd_join(b, NULL);
    printf("%ld\n", atomic_load(&counter));
    return 0;
}
