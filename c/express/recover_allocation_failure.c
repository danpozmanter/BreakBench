// LEVEL: STD

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    size_t n = strtoull(argv[1], NULL, 10);
    char *p = malloc(n);
    puts(p == NULL ? "allocation failed" : "allocated");
    free(p);
    return 0;
}
