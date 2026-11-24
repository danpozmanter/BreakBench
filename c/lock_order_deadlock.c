#define _XOPEN_SOURCE 700
#include <pthread.h>
#include <stdio.h>
static pthread_mutex_t a = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t b = PTHREAD_MUTEX_INITIALIZER;
static pthread_barrier_t both_locked;

static void *forward(void *arg) {
    (void)arg;
    pthread_mutex_lock(&a);
    pthread_barrier_wait(&both_locked); // BREAK!
    pthread_mutex_lock(&b);
    pthread_mutex_unlock(&b);
    pthread_mutex_unlock(&a);
    return NULL;
}

static void *backward(void *arg) {
    (void)arg;
    pthread_mutex_lock(&b); // CONTROL! pthread_mutex_lock(&a);
    pthread_barrier_wait(&both_locked); // BREAK!
    pthread_mutex_lock(&a); // CONTROL! pthread_mutex_lock(&b);
    pthread_mutex_unlock(&a);
    pthread_mutex_unlock(&b);
    return NULL;
}

int main(void) {
    pthread_barrier_init(&both_locked, NULL, 2);
    pthread_t t1, t2;
    pthread_create(&t1, NULL, forward, NULL);
    pthread_create(&t2, NULL, backward, NULL);
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);
    pthread_barrier_destroy(&both_locked);
    puts("finished");
    return 0;
}
