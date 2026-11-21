// LEVEL: PLATFORM

#include <iostream>
#include <stdlib.h>
#include <unistd.h>

int main() {
    char path[] = "/tmp/bb-XXXXXX";
    int fd = mkstemp(path);
    if (fd < 0) return 1;
    if (write(fd, "ok", 2) != 2) return 1;
    char buf[3] = {};
    if (pread(fd, buf, 2, 0) != 2) return 1;
    std::cout << buf << "\n";
    close(fd);
    unlink(path);
}
