#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    const char *name = "a👍b";
    int n = atoi(argv[1]);
    printf("%.*s\n", n, name);
    return 0;
}
