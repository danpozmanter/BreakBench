// LEVEL: PLATFORM

#define _POSIX_C_SOURCE 200809L

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {
    char path[] = "/tmp/bb-XXXXXX";
    int fd = mkstemp(path);
    if (fd < 0) return 1;
    if (write(fd, "ok", 2) != 2) return 1;
    char buf[3] = {0};
    if (pread(fd, buf, 2, 0) != 2) return 1;
    puts(buf);
    close(fd);
    unlink(path);
    return 0;
}
