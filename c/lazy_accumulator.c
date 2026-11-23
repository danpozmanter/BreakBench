#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    if (argc < 2) return 2;
    long count = atol(argv[1]);
    FILE *source = fopen("/dev/zero", "rb");
    if (source == NULL) return 1;
    long long total = 0;
    for (long i = 0; i < count; i++) {
        unsigned char *message = malloc(4096);
        if (message == NULL) return 1;
        total += (long long)fread(message, 1, 4096, source);
        free(message);
    }
    fclose(source);
    printf("%lld\n", total);
    return 0;
}
