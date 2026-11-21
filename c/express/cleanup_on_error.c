// LEVEL: LANGUAGE

#include <stdio.h>

static int use(int fail) {
    int status = 0;
    if (fail) { status = -1; goto release; }
release:
    puts("released");
    return status;
}

int main(void) {
    use(0);
    use(1);
    return 0;
}
