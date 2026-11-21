#include <iostream>

static int &make() {
    int local = 4242;
    return local; // BREAK!
    // CONTROL! static int kept; kept = local; return kept;
}

static void clobber() {
    volatile int junk[64];
    for (int i = 0; i < 64; i++) junk[i] = 7;
}

int main() {
    int &r = make();
    clobber();
    std::cout << r << "\n";
}
