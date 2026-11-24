#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    const char *line = argv[1];
    const char *colon = strchr(line, ':');
    puts(colon + 1); // CONTROL! puts(colon ? colon + 1 : "no colon");
    return 0;
}
