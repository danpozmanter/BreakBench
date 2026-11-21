#include <pthread.h>
#include <stdio.h>

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
static int balance;

static void deposit(int amount) {
    pthread_mutex_lock(&lock);
    balance += amount;
    pthread_mutex_unlock(&lock);
}

int main(void) {
    pthread_mutex_lock(&lock);
    deposit(10);
    pthread_mutex_unlock(&lock);
    puts("done");
    return 0;
}
