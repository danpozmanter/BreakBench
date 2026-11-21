#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int n = atoi(argv[1]);
    printf("%d\n", n + 1);
    return 0;
}
