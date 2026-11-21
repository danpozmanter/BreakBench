#include <stdio.h>

int main(void) {
    const char *names[] = {
        "alice",
        "bob" // CONTROL! "bob",
        "carol",
    };
    printf("%zu\n", sizeof names / sizeof names[0]);
    return 0;
}
