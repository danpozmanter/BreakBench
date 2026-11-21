// LEVEL: STD

#include <stdio.h>
#include <stdlib.h>

int main(void) {
    puts(getenv("BB_UNSET") == NULL ? "absent" : "present");
    return 0;
}
