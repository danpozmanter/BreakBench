// LEVEL: LANGUAGE

#include <stdio.h>

struct Config { const int port; };

int main(void) {
    struct Config c = {8080};
    c.port = 1; // REJECT!
    printf("%d\n", c.port);
    return 0;
}
