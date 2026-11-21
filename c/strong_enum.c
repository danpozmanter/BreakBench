#include <stdio.h>

enum Color { RED, GREEN, BLUE };

static const char *name(enum Color c) {
    switch (c) {
    case RED: return "red";
    case GREEN: return "green";
    case BLUE: return "blue";
    }
    return "";
}

int main(void) {
    printf("%s\n", name(7)); // CONTROL! printf("%s\n", name(GREEN));
    return 0;
}
