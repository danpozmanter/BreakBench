#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    double x = atof(argv[1]);
    long long v = (long long)x;
    printf("%lld\n", v);
    return 0;
}
