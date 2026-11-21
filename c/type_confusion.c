#include <stdio.h>

static long add(long a, long b) { return a + b; }

int main(int argc, char **argv) {
    (void)argc;
    printf("%ld\n", add(argv[1], 3)); // BREAK!
    printf("%ld\n", add(1, 2)); // CONTROL! (void)argv;
    return 0;
}
