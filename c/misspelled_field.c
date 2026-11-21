#include <stdio.h>

struct Config { const char *color; };

int main(void) {
    struct Config cfg = {"blue"};
    cfg.colour = "red"; // BREAK!
    puts(cfg.color);
    return 0;
}
