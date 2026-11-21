// LEVEL: LANGUAGE

#include <stdio.h>

int main(void) {
    const int x = 1;
    x = 2; // REJECT!
    printf("%d\n", x);
    return 0;
}
