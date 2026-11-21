#include <stdio.h>

struct Offset { int dx; int dy; };

static void move(struct Offset o) { printf("%d %d\n", o.dx, o.dy); }

int main(void) {
    move((struct Offset){4, 3});
    return 0;
}
