#include <stdio.h>

int main(void) {
    FILE *f = fopen("/nonexistent/bb.conf", "r");
    if (!f) {
        perror("config missing");
        return; // BREAK!
        // CONTROL! return 1;
    }
    fclose(f);
    return 0;
}
