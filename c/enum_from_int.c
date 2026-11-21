#include <stdio.h>
#include <stdlib.h>

enum Color { RED, GREEN, BLUE };

int main(int argc, char **argv) {
    (void)argc;
    puts("before");
    enum Color c = (enum Color)atoi(argv[1]);
    printf("%d\n", (int)c);
    return 0;
}
