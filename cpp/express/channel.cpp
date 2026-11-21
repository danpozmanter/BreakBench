// LEVEL: PLATFORM

#include <unistd.h>

#include <iostream>
#include <thread>

int main() {
    int fds[2];
    pipe(fds);
    std::thread t([&] { for (int v = 1; v <= 3; v++) write(fds[1], &v, sizeof v); });
    int got[3];
    for (int &g : got) read(fds[0], &g, sizeof g);
    t.join();
    std::cout << got[0] << " " << got[1] << " " << got[2] << "\n";
}
