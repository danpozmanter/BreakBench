#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    const char *status = "pending";
    if (strcmp(argv[1], "ok") == 0) {
        const char *status = "done"; // CONTROL! status = "done";
        fprintf(stderr, "status: %s\n", status);
    }
    puts(status);
    return 0;
}
