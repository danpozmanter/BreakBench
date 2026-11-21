#include <regex.h>
#include <stdio.h>

int main(int argc, char **argv) {
    (void)argc;
    regex_t re;
    regcomp(&re, "^(a+)+$", REG_EXTENDED | REG_NOSUB);
    puts(regexec(&re, argv[1], 0, NULL, 0) == 0 ? "match" : "no match");
    regfree(&re);
    return 0;
}
