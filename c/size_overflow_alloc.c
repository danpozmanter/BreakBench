#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    if (argc < 2) return 2;
    unsigned long long count = strtoull(argv[1], NULL, 10);
    size_t size = count * 8;
    unsigned char *records = malloc(size);
    if (records == NULL) return 1;
    records[8] = 99;
    puts("stored");
    free(records);
    return 0;
}
