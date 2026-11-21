#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

struct round {
    pthread_mutex_t lock;
    pthread_cond_t ready;
    long *first;
    int holders;
};

static void release(struct round *r) {
    if (--r->holders == 0) {
        pthread_mutex_unlock(&r->lock);
        free(r->first);
        free(r);
    } else {
        pthread_mutex_unlock(&r->lock);
    }
}

static void *answer(void *arg) {
    struct round *r = arg;
    long *buf = malloc(8192 * sizeof *buf);
    for (long i = 0; i < 8192; i++) buf[i] = i;
    pthread_mutex_lock(&r->lock);
    if (!r->first) {
        r->first = buf;
        buf = NULL;
        pthread_cond_signal(&r->ready);
    }
    free(buf);
    release(r);
    return NULL;
}

int main(int argc, char **argv) {
    (void)argc;
    long rounds = atol(argv[1]);
    for (long i = 0; i < rounds; i++) {
        struct round *r = calloc(1, sizeof *r);
        pthread_mutex_init(&r->lock, NULL);
        pthread_cond_init(&r->ready, NULL);
        r->holders = 3;
        for (int w = 0; w < 2; w++) {
            pthread_t t;
            pthread_create(&t, NULL, answer, r);
            pthread_detach(t);
        }
        pthread_mutex_lock(&r->lock);
        while (!r->first) pthread_cond_wait(&r->ready, &r->lock);
        release(r);
    }
    puts("done");
    return 0;
}
