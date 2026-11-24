#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    long long n = strtoll(argv[1], NULL, 10);
    printf("%lld\n", n + 1); // CONTROL! printf("%llu\n", (unsigned long long)n + 1);
    return 0;
}
