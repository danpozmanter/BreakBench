#include <pthread.h>
#include <stdio.h>

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t woken = PTHREAD_COND_INITIALIZER;

static void *worker(void *arg) {
    (void)arg;
    pthread_mutex_lock(&lock);
    pthread_cond_wait(&woken, &lock);
    pthread_mutex_unlock(&lock);
    puts("done");
    return NULL;
}

int main(void) {
    pthread_mutex_lock(&lock);
    pthread_cond_signal(&woken);
    pthread_mutex_unlock(&lock);
    pthread_t t;
    pthread_create(&t, NULL, worker, NULL);
    pthread_join(t, NULL);
    return 0;
}
