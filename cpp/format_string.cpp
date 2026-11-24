#include <cstdio>

int main(int, char **argv) {
    std::printf(argv[1]); // CONTROL! std::printf("%s", argv[1]);
    std::printf("\n");
}
