// LEVEL: LANGUAGE

#include <stdio.h>

int main(void) {
    constexpr unsigned char ok = 100;
    constexpr unsigned char too_big = 300; // REJECT!
    printf("%d\n", ok);
    return 0;
}
