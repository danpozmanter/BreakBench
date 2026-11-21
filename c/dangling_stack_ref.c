#include <stdio.h>

static int *make(void) {
    int local = 4242;
    return &local;
}

static void clobber(void) {
    volatile int junk[64];
    for (int i = 0; i < 64; i++) junk[i] = 7;
}

int main(void) {
    int *r = make();
    clobber();
    printf("%d\n", *r);
    return 0;
}
