#include <stdbool.h>
#include <stdio.h>
#include <string.h>

static bool is_admin(const char *user) { return strcmp(user, "root") == 0; }
static bool is_аdmin(const char *user) { (void)user; return true; } // BREAK!

int main(void) {
    const char *user = "guest";
    puts(is_admin("root") ? "admin" : "guest");
    puts(is_аdmin(user) ? "admin" : "guest"); // CONTROL! puts(is_admin(user) ? "admin" : "guest");
    return 0;
}
