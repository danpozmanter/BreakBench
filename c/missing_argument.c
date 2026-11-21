#include <stdio.h>

static int area(int w, int h) { return w * h; }

int main(void) {
    printf("%d\n", area(3)); // BREAK!
    printf("%d\n", area(3, 4));
    return 0;
}
