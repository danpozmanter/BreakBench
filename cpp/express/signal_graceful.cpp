// LEVEL: STD

#include <csignal>
#include <iostream>

static volatile std::sig_atomic_t stop;

int main() {
    std::signal(SIGTERM, [](int) { stop = 1; });
    std::raise(SIGTERM);
    if (stop) std::cout << "cleaned up\n";
}
