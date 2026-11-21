#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    long n = atol(argv[1]);
    FILE *seed = fopen("/tmp/bb_fd.txt", "w");
    fputs("x", seed);
    fclose(seed);
    for (long i = 0; i < n; i++) {
        FILE *f = fopen("/tmp/bb_fd.txt", "r");
        if (!f) {
            perror("open");
            return 1;
        }
        fgetc(f);
    }
    puts("done");
    return 0;
}
