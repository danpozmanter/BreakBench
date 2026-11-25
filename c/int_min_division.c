#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    long long a = strtoll(argv[1], NULL, 10);
    long long b = strtoll(argv[2], NULL, 10);
    printf("%lld\n", a / b); // CONTROL! printf("%llu\n", (0ULL - (unsigned long long)a) / (0ULL - (unsigned long long)b));
    return 0;
}
