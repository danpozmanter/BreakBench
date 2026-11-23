#define _POSIX_C_SOURCE 200809L

#include <stdio.h>

int main(void) {
    FILE *child = popen("printf HELLO-WO; sleep 0.2; printf RLD-1234", "r");
    if (child == NULL) return 1;
    char message[17] = {0};
    fread(message, 1, 16, child);
    pclose(child);
    puts(message);
    return 0;
}
