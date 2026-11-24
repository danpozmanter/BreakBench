#include <stdio.h>
#include <stdlib.h>

enum Color { RED, GREEN, BLUE };

static const char *name(enum Color c) {
    const char *s = NULL;
    switch (c) {
    case RED: s = "red"; break;
    case GREEN: s = "green"; break;
    // CONTROL! case BLUE: s = "blue"; break;
    }
    return s;
}

int main(int argc, char **argv) {
    (void)argc;
    enum Color c = (enum Color)atoi(argv[1]);
    printf("%s\n", name(c));
    return 0;
}
