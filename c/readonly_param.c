#include <stddef.h>
#include <stdio.h>

static size_t count(const int *xs, size_t n) {
    xs[0] = 9; // BREAK!
    return n;
}

int main(void) {
    int xs[] = {1, 2, 3};
    printf("%zu\n", count(xs, 3));
    return 0;
}
