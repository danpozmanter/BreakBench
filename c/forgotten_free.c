#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Rec { unsigned char data[4096]; };

struct Rec *volatile last;

int main(int argc, char **argv) {
    (void)argc;
    long n = atol(argv[1]);
    for (long i = 0; i < n; i++) {
        struct Rec *rec = malloc(sizeof *rec);
        memset(rec->data, 1, sizeof rec->data);
        last = rec;
        // CONTROL! free(rec);
    }
    puts("done");
    return 0;
}
