#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char *request;

static int process(long id) {
    char *buf = malloc(4096);
    snprintf(buf, 4096, "%s#%ld", request, id);
    if (buf[0] != '{') return -1;
    free(buf);
    return 0;
}

int main(int argc, char **argv) {
    (void)argc;
    long n = atol(argv[1]);
    request = "not json";
    long failures = 0;
    for (long i = 0; i < n; i++) {
        if (process(i) != 0) failures++;
    }
    printf(failures == n ? "done\n" : "unexpected\n");
    return 0;
}
