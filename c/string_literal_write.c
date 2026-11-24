#include <stdio.h>

int main(void) {
    char *greeting = "hello"; // CONTROL! char greeting[] = "hello";
    greeting[0] = 'j';
    puts(greeting);
    return 0;
}
