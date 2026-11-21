#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

static void show(int32_t n) { printf("%d\n", n); }

int main(int argc, char **argv) {
    (void)argc;
    int64_t n = strtoll(argv[1], NULL, 10);
    show(n); // CONTROL! printf("%lld\n", (long long)n);
    return 0;
}
