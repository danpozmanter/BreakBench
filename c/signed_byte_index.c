#include <stdio.h>

int main(int argc, char **argv) {
    (void)argc;
    const char *text = argv[1];
    int counts[256] = {0};
    for (const char *p = text; *p; p++) counts[*p]++; // CONTROL! for (const char *p = text; *p; p++) counts[(unsigned char)*p]++;
    int high = 0;
    for (int b = 128; b < 256; b++) high += counts[b];
    printf("%d\n", high);
    return 0;
}
