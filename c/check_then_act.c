#include <pthread.h>
#include <stdbool.h>
#include <stdio.h>

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_barrier_t checked;
static bool claimed;
static int winners;

static void *claim(void *unused) {
    (void)unused;
    bool available;
    pthread_mutex_lock(&lock);
    available = !claimed; // BREAK!
    pthread_mutex_unlock(&lock);
    // CONTROL! pthread_mutex_lock(&lock); available = !claimed; if (available) claimed = true; pthread_mutex_unlock(&lock);
    pthread_barrier_wait(&checked);
    if (available) {
        pthread_mutex_lock(&lock);
        claimed = true;
        winners++;
        pthread_mutex_unlock(&lock);
    }
    return NULL;
}

int main(void) {
    pthread_barrier_init(&checked, NULL, 2);
    pthread_t a, b;
    pthread_create(&a, NULL, claim, NULL);
    pthread_create(&b, NULL, claim, NULL);
    pthread_join(a, NULL);
    pthread_join(b, NULL);
    pthread_barrier_destroy(&checked);
    printf("%d\n", winners);
    return 0;
}
