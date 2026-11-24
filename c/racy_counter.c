#include <pthread.h>
#include <stdio.h>

static long counter;

static void *worker(void *arg) {
    (void)arg;
    for (int i = 0; i < 1000000; i++) counter++;
    return NULL;
}

int main(void) {
    pthread_t threads[8];
    for (int t = 0; t < 8; t++) pthread_create(&threads[t], NULL, worker, NULL);
    for (int t = 0; t < 8; t++) pthread_join(threads[t], NULL);
    printf("%ld\n", counter);
    return 0;
}
