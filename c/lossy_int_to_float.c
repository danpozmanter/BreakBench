#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

static void show(double f) { printf("%.0f\n", f); }

int main(int argc, char **argv) {
    (void)argc;
    int64_t n = strtoll(argv[1], NULL, 10);
    show(n); // CONTROL! printf("%lld\n", (long long)n);
    return 0;
}
