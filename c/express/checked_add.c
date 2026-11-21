// LEVEL: STD

#include <stdckdint.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    long long n = strtoll(argv[1], NULL, 10), r;
    puts(ckd_add(&r, n, 1LL) ? "overflow" : "ok");
    return 0;
}
