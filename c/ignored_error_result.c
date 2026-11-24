#include <stdio.h>

static int save(const char *path) {
    FILE *f = fopen(path, "w");
    if (!f) return -1;
    fputs("data", f);
    fclose(f);
    return 0;
}

int main(void) {
    save("/dev/null/out.txt"); // CONTROL! if (save("/dev/null/out.txt") != 0) puts("failed"); else puts("saved");
    puts("saved"); // BREAK!
    return 0;
}
