// LEVEL: LANGUAGE

#include <stdio.h>

int main(void) {
    int id = 42;
    if (id == 42) puts("match");
    if (id == "42") puts("text"); // REJECT!
    return 0;
}
