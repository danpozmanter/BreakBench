#include <stdio.h>
#include <string.h>

int main(void) {
    if (strcmp("x", "x")) puts("same"); // CONTROL! if (strcmp("x", "x") == 0) puts("same");
    else puts("different");
    return 0;
}
