#include <stdio.h>

int main(int argc, char **argv) {
    (void)argc;
    printf(argv[1]); // CONTROL! printf("%s", argv[1]);
    printf("\n");
    return 0;
}
