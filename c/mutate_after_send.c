// CONTROL! #include <string.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

static int lists[2];
static int go_on[2];

static void *worker(void *arg) {
    (void)arg;
    int *received;
    char signal;
    if (read(lists[0], &received, sizeof received) != sizeof received) return NULL;
    if (read(go_on[0], &signal, 1) != 1) return NULL;
    printf("%d\n", received[0]);
    return NULL;
}

int main(void) {
    if (pipe(lists) != 0 || pipe(go_on) != 0) return 1;
    pthread_t t;
    pthread_create(&t, NULL, worker, NULL);
    int *list = malloc(3 * sizeof *list);
    if (list == NULL) return 1;
    list[0] = 1;
    list[1] = 2;
    list[2] = 3;
    if (write(lists[1], &list, sizeof list) != sizeof list) return 1; // CONTROL! int *copy = malloc(3 * sizeof *copy); memcpy(copy, list, 3 * sizeof *copy); if (write(lists[1], &copy, sizeof copy) != sizeof copy) return 1;
    list[0] = 99;
    if (write(go_on[1], "g", 1) != 1) return 1;
    pthread_join(t, NULL);
    free(list);
    return 0;
}
