// LEVEL: STD

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
    (void)argc;
    char *end;
    strtol(argv[1], &end, 10);
    puts(*end != '\0' ? "invalid" : "valid");
    return 0;
}
