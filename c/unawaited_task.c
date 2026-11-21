#include <pthread.h>
#include <stdatomic.h>
#include <stdio.h>
#include <time.h>

static atomic_int saved;

static void *save(void *arg) {
    (void)arg;
    struct timespec t = {0, 50000000};
    nanosleep(&t, NULL);
    atomic_fetch_add(&saved, 1);
    return NULL;
}

int main(void) {
    pthread_t task;
    pthread_create(&task, NULL, save, NULL); // CONTROL! pthread_create(&task, NULL, save, NULL); pthread_join(task, NULL);
    printf("%d\n", atomic_load(&saved));
    return 0;
}
