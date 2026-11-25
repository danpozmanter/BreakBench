#include <pthread.h>
#include <stdbool.h>
#include <stdio.h>
#include <time.h>

static pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t changed = PTHREAD_COND_INITIALIZER;
static bool gate_open = false;
static bool attempt_done = false;
static long balance = 100;

static void charge(void) {
    pthread_mutex_lock(&lock);
    while (!gate_open) pthread_cond_wait(&changed, &lock);
    balance -= 30;
    pthread_mutex_unlock(&lock);
}

static void *attempt(void *arg) {
    (void)arg;
    charge();
    pthread_mutex_lock(&lock);
    attempt_done = true;
    pthread_cond_broadcast(&changed);
    pthread_mutex_unlock(&lock);
    return NULL;
}

int main(void) {
    pthread_t t;
    pthread_create(&t, NULL, attempt, NULL);
    struct timespec deadline;
    clock_gettime(CLOCK_REALTIME, &deadline);
    deadline.tv_nsec += 100000000;
    if (deadline.tv_nsec >= 1000000000) { deadline.tv_sec++; deadline.tv_nsec -= 1000000000; }
    pthread_mutex_lock(&lock);
    int status = 0;
    while (!attempt_done && status == 0) status = pthread_cond_timedwait(&changed, &lock, &deadline);
    bool timed_out = !attempt_done;
    if (timed_out) {
        gate_open = true;
        pthread_cond_broadcast(&changed);
    }
    pthread_mutex_unlock(&lock);
    if (timed_out) charge(); // BREAK!
    pthread_join(t, NULL);
    printf("%ld\n", balance);
    return 0;
}
