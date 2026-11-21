// LEVEL: LANGUAGE

#include <stdio.h>

int main(void) {
    _BitInt(128) x = (_BitInt(128))1 << 100;
    char digits[40];
    int n = 0;
    while (x > 0) {
        digits[n++] = (char)('0' + (int)(x % 10));
        x /= 10;
    }
    while (n > 0) putchar(digits[--n]);
    putchar('\n');
    return 0;
}
