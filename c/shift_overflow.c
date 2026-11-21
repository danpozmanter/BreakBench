#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int s = atoi(argv[1]);
    unsigned long long one = 1;
    printf("%llu\n", one << s);
    return 0;
}
