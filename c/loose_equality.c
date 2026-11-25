#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    const char *code = argv[1];
    puts(code == 0 ? "same" : "different"); // CONTROL! puts(strcmp(code, "0") == 0 ? "same" : "different");
    return 0;
}
