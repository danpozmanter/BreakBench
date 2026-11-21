#include <stdint.h>
#include <stdio.h>

int main(void) {
    const int64_t span = INT64_C(1000000000) * 60 * 60 * 24 * 365 * 300;
    printf("%lld\n", (long long)span);
    return 0;
}
