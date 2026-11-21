// LEVEL: PLATFORM

#include <unistd.h>

#include <cstdio>

int main() {
    unsigned char buf[16];
    if (getentropy(buf, sizeof buf) != 0) return 1;
    for (unsigned char b : buf) std::printf("%02x", b);
    std::printf("\n");
}
