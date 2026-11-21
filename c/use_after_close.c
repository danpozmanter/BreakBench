#include <stdio.h>

int main(void) {
    FILE *f = fopen("/tmp/bb_close.txt", "w");
    if (!f) {
        perror("open");
        return 1;
    }
    if (fputs("a", f) == EOF) {
        perror("write");
        return 1;
    }
    if (fclose(f) != 0) {
        perror("close");
        return 1;
    }
    if (fputs("b", f) == EOF) {
        perror("write");
        return 1;
    }
    puts("ok");
    return 0;
}
