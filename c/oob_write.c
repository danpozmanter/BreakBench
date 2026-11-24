#include <stdio.h>
#include <stdlib.h>

struct Frame { int buf[4]; int guard; };

int main(int argc, char **argv) {
    (void)argc;
    struct Frame f = {{0, 0, 0, 0}, 7};
    int idx = atoi(argv[1]);
    f.buf[idx] = 99; // CONTROL! if (idx >= 0 && idx < 4) f.buf[idx] = 99;
    printf("%d\n", f.guard);
    return 0;
}
