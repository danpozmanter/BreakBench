// LEVEL: STD

#include <stdio.h>
#include <threads.h>
#include <time.h>

static int task(void *arg) {
    (void)arg;
    thrd_sleep(&(struct timespec){.tv_nsec = 50000000}, NULL);
    return 7;
}

int main(void) {
    thrd_t t;
    thrd_create(&t, task, NULL);
    puts("started");
    int answer = 0;
    thrd_join(t, &answer);
    printf("%d\n", answer);
    return 0;
}
