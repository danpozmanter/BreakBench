#include <stdio.h>

struct callback {
    int (*fn)(int);
    int arg;
};

static int identity(int x) {
    return x;
}

int main(void) {
    struct callback fs[3];
    for (int i = 0; i < 3; i++) fs[i] = (struct callback){identity, i};
    printf("%d,%d,%d\n", fs[0].fn(fs[0].arg), fs[1].fn(fs[1].arg), fs[2].fn(fs[2].arg));
    return 0;
}
