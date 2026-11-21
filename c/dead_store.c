#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    long price = strtol(argv[1], NULL, 10);
    long total = price + 2;
    printf("%ld\n", price); // CONTROL! printf("%ld\n", total);
    return 0;
}
