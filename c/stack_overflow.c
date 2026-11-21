#include <stdio.h>
#include <stdlib.h>

static long long walk(long long n) {
    if (n == 0) return 0;
    return (walk(n - 1) * 31 + n) % 1000000007;
}

int main(int argc, char **argv) {
    (void)argc;
    printf("%lld\n", walk(atoll(argv[1])));
    return 0;
}
