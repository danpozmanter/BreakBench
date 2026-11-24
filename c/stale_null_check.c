#include <stdio.h>
#include <string.h>

typedef struct { const char *name; } User;
typedef struct { User *user; } Session;

static void logout(Session *session) { session->user = NULL; }

int main(void) {
    User alice = {"alice"};
    Session session = {&alice};
    if (session.user != NULL) {
        logout(&session); // CONTROL! printf("%zu\n", strlen(session.user->name));
        printf("%zu\n", strlen(session.user->name)); // CONTROL! logout(&session);
    }
    return 0;
}
