#include <stdio.h>
#include <string.h>

typedef struct { const char *name; } User;

int main(void) {
    User decoded = {NULL};
    printf("%zu\n", strlen(decoded.name)); // CONTROL! if (decoded.name) printf("%zu\n", strlen(decoded.name)); else puts("no name");
    return 0;
}
