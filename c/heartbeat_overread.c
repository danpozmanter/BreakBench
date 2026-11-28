#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char **argv) {
    (void)argc;
    size_t claimed = strtoul(argv[1], NULL, 10);
    char *buf = calloc(64, 1);
    memcpy(buf + 2, "SECRET-KEY-0042", 15);
    memcpy(buf, "hi", 2);
    const char *payload = buf;
    size_t payload_len = 2;
    fprintf(stderr, "heartbeat of %zu bytes\n", payload_len);
    // CONTROL! if (claimed > payload_len) { puts("invalid"); free(buf); return 0; }
    char reply[65] = {0};
    memcpy(reply, payload, claimed);
    printf("%s\n", reply);
    free(buf);
    return 0;
}
