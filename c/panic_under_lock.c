#include <pthread.h>
#include <stdio.h>

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
static long debits, credits;

static void *post(void *arg) {
    (void)arg;
    pthread_mutex_lock(&lock);
    debits += 50;
    if (debits > 0) { // CONTROL! if (debits > 0) { debits -= 50;
        pthread_mutex_unlock(&lock);
        return (void *)1;
    }
    credits += 50;
    pthread_mutex_unlock(&lock);
    return NULL;
}

int main(void) {
    pthread_t worker;
    void *status;
    pthread_create(&worker, NULL, post, NULL);
    pthread_join(worker, &status);
    if (status) fputs("worker failed\n", stderr);
    pthread_mutex_lock(&lock);
    puts(debits == credits ? "balanced" : "unbalanced");
    pthread_mutex_unlock(&lock);
    return 0;
}
