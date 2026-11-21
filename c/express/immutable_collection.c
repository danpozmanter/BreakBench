// LEVEL: LANGUAGE

#include <stdio.h>

int main(void) {
    const int xs[3] = {1, 2, 3};
    xs[0] = 9; // REJECT!
    printf("%zu\n", sizeof xs / sizeof xs[0]);
    return 0;
}
