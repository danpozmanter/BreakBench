#include <stdio.h>
#include <stdlib.h>

typedef struct { long value; long pad[3]; } Rec;

int main(void) {
    Rec *a = malloc(sizeof(Rec));
    a->value = 1234;
    Rec *b = a;
    free(a); // BREAK!
    Rec *c = malloc(sizeof(Rec));
    c->value = 6666;
    printf("%ld\n", b->value);
    free(c);
    return 0;
}
