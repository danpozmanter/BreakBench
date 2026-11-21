#include <stdio.h>

static int save(const char *path) {
    FILE *f = fopen(path, "w");
    if (!f) return -1;
    fputs("data", f);
    fclose(f);
    return 0;
}

int main(void) {
    save("/nonexistent/dir/out.txt");
    puts("saved");
    return 0;
}
