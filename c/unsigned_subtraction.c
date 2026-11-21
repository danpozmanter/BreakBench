#include <stdio.h>
#include <string.h>

#define HEADER 5

int main(int argc, char **argv) {
    (void)argc;
    size_t payload = strlen(argv[1]) - HEADER;
    if (payload < 0) {
        puts("short");
    } else {
        printf("%zu\n", payload);
    }
    return 0;
}
