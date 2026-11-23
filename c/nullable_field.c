#include <stdio.h>
#include <string.h>

typedef struct { const char *name; } User;

int main(void) {
    User decoded = {NULL};
    printf("%zu\n", strlen(decoded.name)); // BREAK!
    return 0;
}
