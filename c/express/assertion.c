// LEVEL: STD

#include <assert.h>
#include <stdio.h>

int main(void) {
    puts("before");
    fflush(stdout);
    assert(1 + 1 == 3);
    puts("after");
    return 0;
}
