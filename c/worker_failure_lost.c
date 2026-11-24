#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>

struct job {
    int argc;
    char **argv;
    long total;
};

static void *sum(void *arg) {
    struct job *job = arg;
    for (int i = 1; i < job->argc; i++) {
        char *end;
        long v = strtol(job->argv[i], &end, 10);
        if (*end != '\0') return (void *)1;
        job->total += v;
    }
    return NULL;
}

int main(int argc, char **argv) {
    struct job job = {argc, argv, 0};
    pthread_t worker;
    pthread_create(&worker, NULL, sum, &job);
    pthread_join(worker, NULL); // CONTROL! void *res; pthread_join(worker, &res);
    printf("total %ld\n", job.total); // CONTROL! if (res) puts("failed"); else printf("total %ld\n", job.total);
    return 0;
}
