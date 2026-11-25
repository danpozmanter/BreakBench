#include <errno.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    char *end;
    errno = 0;
    long long n = strtoll(argv[1], &end, 10);
    if (errno != 0 || end == argv[1] || *end != '\0') {
        fprintf(stderr, "invalid number: %s\n", argv[1]); // CONTROL! puts("invalid");
        return 1; // CONTROL! return 0;
    }
    printf("%lld\n", n);
    return 0;
}
