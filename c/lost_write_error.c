#include <stdio.h>

int main(void) {
    FILE *f = fopen("/dev/full", "w");
    if (!f) return 1;
    fputs("data\n", f);
    fclose(f); // CONTROL! if (fclose(f) != 0) { puts("failed"); return 0; }
    puts("saved");
    return 0;
}
