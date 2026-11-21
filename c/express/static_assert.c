// LEVEL: LANGUAGE

#include <stdio.h>

enum { BYTE_LIMIT = 255 };

static_assert(100 <= BYTE_LIMIT, "100 fits in a byte");
static_assert(300 <= BYTE_LIMIT, "300 fits in a byte"); // REJECT!

int main(void) {
    printf("%d\n", 100);
    return 0;
}
