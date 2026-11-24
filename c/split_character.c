#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    const char *name = "a👍b";
    int n = atoi(argv[1]);
    printf("%.*s\n", n, name); // CONTROL! const char *p = name; for (int k = 0; k < n && *p; k++) { p++; while ((*p & 0xC0) == 0x80) p++; } printf("%.*s\n", (int)(p - name), name);
    return 0;
}
