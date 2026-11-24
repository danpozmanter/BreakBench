#include <pthread.h>
#include <stdio.h>

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
static int balance = 100;

static void withdraw(int amount) {
    pthread_mutex_lock(&lock);
    if (amount > balance) {
        return; // CONTROL! pthread_mutex_unlock(&lock); return;
    }
    balance -= amount;
    pthread_mutex_unlock(&lock);
}

static void *worker(void *arg) {
    (void)arg;
    withdraw(30);
    return NULL;
}

int main(void) {
    withdraw(500);
    pthread_t t;
    pthread_create(&t, NULL, worker, NULL);
    pthread_join(t, NULL);
    printf("%d\n", balance);
    return 0;
}
