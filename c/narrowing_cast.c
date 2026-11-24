#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int v = atoi(argv[1]);
    // CONTROL! if (v < 0 || v > 255) { puts("out of range"); return 0; }
    uint8_t b = (uint8_t)v;
    printf("%d\n", b);
    return 0;
}
