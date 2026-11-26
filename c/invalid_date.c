#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(int argc, char **argv) {
    (void)argc;
    int y = atoi(argv[1]), m = atoi(argv[2]), d = atoi(argv[3]);
    struct tm tm = {.tm_year = y - 1900, .tm_mon = m - 1, .tm_mday = d, .tm_hour = 12};
    mktime(&tm);
    printf("%04d-%02d-%02d\n", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday); // CONTROL! if (tm.tm_mday != d) puts("invalid"); else printf("%04d-%02d-%02d\n", tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday);
    return 0;
}
