#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char **argv) {
    (void)argc;
    char cmd[256];
    remove("/tmp/bb_pwned");
    snprintf(cmd, sizeof cmd, "echo %s > /dev/null", argv[1]);
    int rc = system(cmd);
    (void)rc;
    puts(access("/tmp/bb_pwned", F_OK) == 0 ? "injected" : "safe");
    return 0;
}
