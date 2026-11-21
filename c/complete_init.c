#include <stdio.h>

struct Config { int timeout; int retries; };

int main(void) {
    struct Config c = {.timeout = 30}; // CONTROL! struct Config c = {.timeout = 30, .retries = 3};
    printf("%d\n", c.retries);
    return 0;
}
