#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    size_t n = strtoull(argv[1], NULL, 10);
    unsigned char *buf = calloc(n, 1);
    buf[n - 1] = 1;
    printf("%zu\n", n);
    return 0;
}
