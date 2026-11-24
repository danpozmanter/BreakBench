#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

static int fds[2];

static void *worker(void *arg) {
    (void)arg;
    char *end;
    long n = strtol("x", &end, 10);
    if (*end != '\0') return NULL; // CONTROL! if (*end != '\0') { close(fds[1]); return NULL; }
    write(fds[1], &n, sizeof n);
    return NULL;
}

int main(void) {
    pipe(fds);
    pthread_t t;
    pthread_create(&t, NULL, worker, NULL);
    long answer;
    read(fds[0], &answer, sizeof answer); // CONTROL! if (read(fds[0], &answer, sizeof answer) != sizeof answer) { puts("failed"); return 0; }
    printf("%ld\n", answer);
    return 0;
}
