// LEVEL: LANGUAGE

#include <stdio.h>

enum Shape { CIRCLE, SQUARE };

static const char *describe(enum Shape s) {
    switch (s) {
    case CIRCLE: return "circle";
    default: return "other";
    }
}

static const char *bad(enum Shape s) { switch (s) { case CIRCLE: return "circle"; case CIRCLE: return "again"; default: return "other"; } } // REJECT!

int main(void) {
    puts(describe(SQUARE));
    return 0;
}
