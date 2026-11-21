#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    long n = atol(argv[1]);
    unsigned char **heads = malloc((size_t)n * sizeof *heads);
    char **prefixes = malloc((size_t)n * sizeof *prefixes);
    for (long i = 0; i < n; i++) {
        unsigned char *buf = malloc(32768);
        memset(buf, (int)(i & 255), 32768);
        heads[i] = malloc(16);
        memcpy(heads[i], buf, 16);
        free(buf);
        char *big = malloc(32769);
        memset(big, 'a' + (int)(i % 26), 32768);
        big[32768] = '\0';
        prefixes[i] = strndup(big, 16);
        free(big);
    }
    printf("%ld\n", n);
    return 0;
}
