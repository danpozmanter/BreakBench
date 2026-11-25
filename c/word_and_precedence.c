#include <iso646.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    bool ready = strcmp(argv[1], "yes") == 0;
    bool approved = strcmp(argv[2], "yes") == 0;
    bool ok;
    ok = ready and approved;
    puts(ok ? "go" : "wait");
    return 0;
}
