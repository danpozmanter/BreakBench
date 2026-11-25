#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int parse_order(char *line, long *qty) {
    char *parts[4] = {0};
    int n = 0;
    for (char *p = strtok(line, ","); p && n < 4; p = strtok(NULL, ",")) parts[n++] = p;
    char *end;
    *qty = strtol(parts[2], &end, 10); // BREAK!
    // CONTROL! *qty = strtol(parts[1], &end, 10);
    return *end == '\0' ? 0 : -1;
}

int main(void) {
    char line[] = "widget,5";
    long qty;
    if (parse_order(line, &qty) == 0) printf("%ld\n", qty);
    else puts("invalid order");
    return 0;
}
