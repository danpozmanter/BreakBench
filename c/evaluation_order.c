// UNDEFINED: C leaves the order of a call's arguments unspecified; clang happens to run them left to right
#include <stdio.h>

static int counter;

static int next(void) { return ++counter; }

static void pair(int a, int b) { printf("%d %d\n", a, b); }

int main(void) {
    pair(next(), next());
    return 0;
}
