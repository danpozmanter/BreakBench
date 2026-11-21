#include <iostream>
#include <string>

static long long walk(long long n) {
    if (n == 0) return 0;
    return (walk(n - 1) * 31 + n) % 1000000007;
}

int main(int, char **argv) {
    std::cout << walk(std::stoll(argv[1])) << "\n";
}
