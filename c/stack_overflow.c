#include <stdio.h>
#include <stdlib.h>

static long long walk(long long n) {
    if (n == 0) return 0;
    return (walk(n - 1) * 31 + n) % 1000000007;
}

int main(int argc, char **argv) {
    (void)argc;
    printf("%lld\n", walk(atoll(argv[1]))); // CONTROL! long long n = atoll(argv[1]), acc = 0; for (long long i = 1; i <= n; i++) acc = (acc * 31 + i) % 1000000007; printf("%lld\n", acc);
    return 0;
}
