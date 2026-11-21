#include <stdio.h>
#include <string.h>

int main(void) {
    const char *s = "";
    puts((strlen(s) > 0) & (s[0] == 'a') ? "yes" : "no"); // CONTROL! puts(strlen(s) > 0 && s[0] == 'a' ? "yes" : "no");
    return 0;
}
