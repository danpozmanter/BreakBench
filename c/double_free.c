#include <stdio.h>
#include <stdlib.h>

typedef struct { long value; long pad[3]; } Rec;

static Rec *registry[4];

int main(void) {
    Rec *a = malloc(sizeof(Rec));
    a->value = 0;
    registry[0] = a;
    free(a);
    free(registry[0]); // BREAK!
    Rec *x = malloc(sizeof(Rec));
    Rec *y = malloc(sizeof(Rec));
    x->value = 1;
    y->value = 2;
    registry[1] = x;
    registry[2] = y;
    printf("%ld\n", registry[1]->value);
    return 0;
}
