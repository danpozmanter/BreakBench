// LEVEL: LANGUAGE

#include <stdio.h>

struct P { int x; };

int main(void) {
    struct P a = {1};
    struct P b = a;
    b.x = 9;
    printf("%d\n", a.x);
    return 0;
}
