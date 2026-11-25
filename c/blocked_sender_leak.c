#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

static int fds[2];

static void *worker(void *arg) {
    (void)arg;
    long answer = 42;
    write(fds[1], &answer, sizeof answer);
    return NULL;
}

static long first_answer(pthread_t workers[2]) {
    pipe(fds);
    for (int i = 0; i < 2; i++) pthread_create(&workers[i], NULL, worker, NULL);
    long answer = 0;
    read(fds[0], &answer, sizeof answer);
    return answer;
}

int main(void) {
    pthread_t workers[2];
    printf("%ld\n", first_answer(workers));
    for (int i = 0; i < 2; i++) pthread_join(workers[i], NULL);
    puts("done");
    return 0;
}
