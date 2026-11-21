// LEVEL: PLATFORM

#define _DEFAULT_SOURCE
#include <stdio.h>
#include <unistd.h>

int main(void) {
    unsigned char buf[16];
    if (getentropy(buf, sizeof buf) != 0) return 1;
    for (int i = 0; i < 16; i++) printf("%02x", buf[i]);
    printf("\n");
    return 0;
}
