#include <cstdlib>
#include <cstring>
#include <iostream>
#include <memory>

struct Rec { unsigned char data[4096]; };

Rec *volatile last;

int main(int, char **argv) {
    long n = std::atol(argv[1]);
    for (long i = 0; i < n; ++i) {
        auto rec = std::make_unique<Rec>();
        std::memset(rec->data, 1, sizeof rec->data);
        last = rec.get();
    }
    std::cout << "done\n";
}
