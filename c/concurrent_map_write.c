#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

#define THREADS 8
#define PER_THREAD 100000

typedef struct { long *keys; char *used; size_t cap; size_t len; } Map;

static Map map;

static void map_grow(Map *m);

static void map_put(Map *m, long key) {
    if ((m->len + 1) * 2 > m->cap) map_grow(m);
    size_t i = (size_t)key * 2654435761u % m->cap;
    while (m->used[i]) {
        if (m->keys[i] == key) return;
        i = (i + 1) % m->cap;
    }
    m->used[i] = 1;
    m->keys[i] = key;
    m->len++;
}

static void map_grow(Map *m) {
    Map bigger = {calloc(m->cap * 2, sizeof(long)), calloc(m->cap * 2, 1), m->cap * 2, 0};
    for (size_t i = 0; i < m->cap; i++) {
        if (m->used[i]) map_put(&bigger, m->keys[i]);
    }
    free(m->keys);
    free(m->used);
    *m = bigger;
}

static void *writer(void *arg) {
    long base = (long)arg * PER_THREAD;
    for (long k = 0; k < PER_THREAD; k++) map_put(&map, base + k);
    return NULL;
}

int main(void) {
    map = (Map){calloc(16, sizeof(long)), calloc(16, 1), 16, 0};
    pthread_t threads[THREADS];
    for (long t = 0; t < THREADS; t++) pthread_create(&threads[t], NULL, writer, (void *)t);
    for (int t = 0; t < THREADS; t++) pthread_join(threads[t], NULL);
    printf("%zu\n", map.len);
    return 0;
}
