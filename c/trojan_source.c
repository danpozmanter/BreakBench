#include <stdio.h>
#include <string.h>

int main(void) {
    const char *access = "user";
    if (strcmp(access, "user‮ ⁦// admins only⁩ ⁦") != 0) { // CONTROL! if (strcmp(access, "user") != 0) {
        puts("admin");
    } else {
        puts("user");
    }
    return 0;
}
