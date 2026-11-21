// LEVEL: PLATFORM

#include <regex.h>
#include <stdio.h>

int main(void) {
    regex_t re;
    regcomp(&re, "^(a+)+$", REG_EXTENDED | REG_NOSUB);
    puts(regexec(&re, "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!", 0, NULL, 0) == 0 ? "match" : "no match");
    regfree(&re);
    return 0;
}
