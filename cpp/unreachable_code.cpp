#include <cstdio>

static void check() {
    std::puts("ok");
    return; // BREAK!
    std::puts("checked");
}

int main() {
    check();
}
