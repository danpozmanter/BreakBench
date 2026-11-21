// LEVEL: STD

#include <stdio.h>
#include <threads.h>

static int work(void *arg) {
    *(const char **)arg = "bad input";
    return 1;
}

int main(void) {
    const char *why = NULL;
    thrd_t t;
    thrd_create(&t, work, &why);
    int status = 0;
    thrd_join(t, &status);
    if (status != 0) printf("worker failed: %s\n", why);
    return 0;
}
