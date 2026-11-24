#include <stdio.h>
#include <stdlib.h>

unsigned char *sessions[8];

static void send_response(const unsigned char *data, size_t len) {
    for (size_t i = 0; i < len; i++) printf("%02x", data[i]);
    printf("\n");
}

int main(int argc, char **argv) {
    (void)argc;
    unsigned char *session = malloc(64);
    sessions[0] = session;
    snprintf((char *)session + 32, 32, "SECRET-%s", argv[0][0] ? "TOKEN" : "");
    free(session);
    unsigned char *reply = malloc(64); // CONTROL! unsigned char *reply = calloc(1, 64);
    sessions[1] = reply;
    fflush(stdout);
    send_response(reply + 32, 12);
    free(reply);
    return 0;
}
