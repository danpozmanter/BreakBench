#include <stdio.h>
#include <stdlib.h>

struct Frame { int buf[4]; int secret; };

int main(int argc, char **argv) {
    (void)argc;
    struct Frame f = {{1, 2, 3, 4}, 42};
    int idx = atoi(argv[1]);
    printf("%d\n", f.buf[idx]); // CONTROL! if (idx >= 0 && idx < 4) printf("%d\n", f.buf[idx]); else puts("out of range");
    return 0;
}
