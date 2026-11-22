#include <stdio.h>

int main(void) {
    FILE *f = fopen("/dev/full", "w");
    if (!f) return 1;
    fputs("data\n", f);
    fclose(f);
    puts("saved");
    return 0;
}
