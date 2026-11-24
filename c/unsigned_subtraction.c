#include <stdio.h>
#include <string.h>

#define HEADER 5

int main(int argc, char **argv) {
    (void)argc;
    size_t payload = strlen(argv[1]) - HEADER; // CONTROL! size_t len = strlen(argv[1]);
    if (payload < 0) { // CONTROL! if (len < HEADER) {
        puts("short");
    } else {
        printf("%zu\n", payload); // CONTROL! printf("%zu\n", len - HEADER);
    }
    return 0;
}
