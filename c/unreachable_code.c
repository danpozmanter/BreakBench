#include <stdio.h>

static void check(void) {
    puts("ok");
    return; // BREAK!
    puts("checked");
}

int main(void) {
    check();
    return 0;
}
