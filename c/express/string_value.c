// LEVEL: LANGUAGE

#include <stdio.h>
#include <string.h>

int main(void) {
    char a[8] = "abc";
    char *b = a;
    strcat(b, "d");
    printf("%s\n", a);
    return 0;
}
