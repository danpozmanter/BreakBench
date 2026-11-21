// LEVEL: PLATFORM

#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>

int main(void) {
    const char *path = "/tmp/bb_perm.txt";
    unlink(path);
    int fd = open(path, O_CREAT | O_EXCL | O_WRONLY, 0600);
    if (fd < 0) return 1;
    close(fd);
    struct stat st;
    if (stat(path, &st) != 0) return 1;
    printf("%o\n", st.st_mode & 0777);
    unlink(path);
    return 0;
}
