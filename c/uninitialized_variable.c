#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    int n = atoi(argv[1]);
    int x; // CONTROL! int x = 0;
    if (n > 5) x = 10;
    printf("%d\n", x);
    return 0;
}
