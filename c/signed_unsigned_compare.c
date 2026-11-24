#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int xs[] = {1, 2, 3};
    long i = atol(argv[1]);
    size_t len = sizeof xs / sizeof xs[0];
    if (i < len) { // CONTROL! if (i < (long)len) {
        puts("less");
    } else {
        puts("not less");
    }
    return 0;
}
