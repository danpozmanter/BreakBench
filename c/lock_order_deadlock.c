#include <pthread.h>
#include <stdio.h>
#include <time.h>
#include <unistd.h>

static void sleep_ms(long ms) {
    struct timespec t = {ms / 1000, (ms % 1000) * 1000000};
    nanosleep(&t, NULL);
}

static pthread_mutex_t a = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t b = PTHREAD_MUTEX_INITIALIZER;

static void *forward(void *arg) {
    (void)arg;
    pthread_mutex_lock(&a);
    sleep_ms(100);
    pthread_mutex_lock(&b);
    pthread_mutex_unlock(&b);
    pthread_mutex_unlock(&a);
    return NULL;
}

static void *backward(void *arg) {
    (void)arg;
    pthread_mutex_lock(&b);
    sleep_ms(100);
    pthread_mutex_lock(&a);
    pthread_mutex_unlock(&a);
    pthread_mutex_unlock(&b);
    return NULL;
}

int main(void) {
    pthread_t t1, t2;
    pthread_create(&t1, NULL, forward, NULL);
    pthread_create(&t2, NULL, backward, NULL);
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);
    puts("finished");
    return 0;
}
