#include <iostream>
#include <string>

static long long walk(long long n) {
    if (n == 0) return 0;
    return (walk(n - 1) * 31 + n) % 1000000007;
}

int main(int, char **argv) {
    std::cout << walk(std::stoll(argv[1])) << "\n"; // CONTROL! long long n = std::stoll(argv[1]), acc = 0; for (long long i = 1; i <= n; i++) acc = (acc * 31 + i) % 1000000007; std::cout << acc << "\n";
}
