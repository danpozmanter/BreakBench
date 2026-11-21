// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stdlib.h>

int main(void) {
    char *data;
    size_t len;
    FILE *buf = open_memstream(&data, &len);
    for (int i = 0; i < 100000; i++) fputc(i & 0xFF, buf);
    fclose(buf);
    printf("%zu\n", len);
    free(data);
    return 0;
}
