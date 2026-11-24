#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int d = atoi(argv[1]);
    printf("%d\n", 100 / d); // CONTROL! if (d == 0) puts("cannot divide"); else printf("%d\n", 100 / d);
    return 0;
}
