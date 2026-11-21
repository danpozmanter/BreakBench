#include <ctype.h>
#include <stdio.h>

int main(void) {
    char name[] = "ada";
    for (char *p = name; *p; p++) {
        *p = (char)toupper((unsigned char)*p);
    }
    puts(name);
    return 0;
}
