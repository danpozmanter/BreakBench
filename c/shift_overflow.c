#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int s = atoi(argv[1]);
    unsigned long long one = 1;
    printf("%llu\n", one << s); // CONTROL! double r = 1; for (int i = 0; i < s; i++) r *= 2; printf("%.0f\n", r);
    return 0;
}
