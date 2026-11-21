#include <stdio.h>

struct Config { const int port; };

int main(void) {
    struct Config c = {8080};
    c.port = 1; // BREAK!
    printf("%d\n", c.port);
    return 0;
}
