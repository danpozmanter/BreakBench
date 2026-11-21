#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    char s[16];
    snprintf(s, sizeof s, "ab%s", argv[1]);
    int same = s == "abc"; // BREAK!
    // CONTROL! int same = strcmp(s, "abc") == 0;
    puts(same ? "equal" : "different");
    return 0;
}
