#include <stdio.h>
#include <stdlib.h>

static int is_odd(long n) {
    return n % 2 == 1; // CONTROL! return n % 2 != 0;
}

int main(int argc, char **argv) {
    (void)argc;
    puts(is_odd(atol(argv[1])) ? "odd" : "even");
    return 0;
}
