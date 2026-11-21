// LEVEL: PLATFORM

#include <regex.h>
#include <stdio.h>

int main(void) {
    regex_t re;
    regcomp(&re, "^[a-z]+[0-9]{2}$", REG_EXTENDED | REG_NOSUB);
    int a = regexec(&re, "abc12", 0, NULL, 0) == 0;
    int b = regexec(&re, "abc1", 0, NULL, 0) == 0;
    printf("%s %s\n", a ? "true" : "false", b ? "true" : "false");
    regfree(&re);
    return 0;
}
