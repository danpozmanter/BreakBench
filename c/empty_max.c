#include <stdio.h>
#include <stdlib.h>

// C has no standard call for the maximum of an array; this is the usual loop.
int main(int argc, char **argv) {
    long *xs = malloc(sizeof(long) * (size_t)(argc - 1));
    for (int i = 1; i < argc; i++) xs[i - 1] = atol(argv[i]);
    long n = argc - 1;
    long m = xs[0];
    for (long i = 1; i < n; i++)
        if (xs[i] > m) m = xs[i];
    printf("%ld\n", m + 1);
    free(xs);
    return 0;
}
