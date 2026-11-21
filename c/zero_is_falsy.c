#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    long value = strtol(argv[1], NULL, 10);
    long *qty = argv[1][0] ? &value : NULL;
    if (qty) {
        printf("have %ld\n", *qty);
    } else {
        puts("missing");
    }
    return 0;
}
