// LEVEL: LANGUAGE

#include <stdio.h>

[[nodiscard]] static int save(void) { return -1; }

int main(void) {
    save(); // REJECT!
    if (save() != 0) puts("handled");
    return 0;
}
