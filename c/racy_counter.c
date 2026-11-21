#include <pthread.h>
#include <stdio.h>

static void *add(void *p) {
    long *count = p;
    for (int i = 0; i < 1000000; i++) (*count)++;
    return NULL;
}

int main(void) {
    long count = 0;
    pthread_t a, b;
    pthread_create(&a, NULL, add, &count);
    pthread_create(&b, NULL, add, &count);
    pthread_join(a, NULL);
    pthread_join(b, NULL);
    printf("%ld\n", count);
    return 0;
}
