#include <cstdint>
#include <cstdio>
#include <string>

static void show(double f) { std::printf("%.0f\n", f); }

int main(int, char **argv) {
    std::int64_t n = std::stoll(argv[1]);
    show(n); // CONTROL! std::printf("%lld\n", static_cast<long long>(n));
}
