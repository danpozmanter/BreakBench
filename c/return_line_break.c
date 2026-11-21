#include <stdio.h>

static long total(long a, long b) {
    return // CONTROL! return a + b;
        a + b; // BREAK!
}

int main(void) {
    printf("%ld\n", total(2, 3));
    return 0;
}
