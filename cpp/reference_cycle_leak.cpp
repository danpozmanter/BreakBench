#include <array>
#include <functional>
#include <iostream>
#include <memory>
#include <string>

struct Node {
    std::shared_ptr<Node> next;
    std::array<char, 2048> payload{};
};

struct Obj {
    std::array<char, 2048> payload{};
    std::function<long()> callback;
};

int main(int, char **argv) {
    long n = std::stol(argv[1]);
    long total = 0;
    for (long i = 0; i < n; i++) {
        auto a = std::make_shared<Node>();
        auto b = std::make_shared<Node>();
        a->next = b;
        b->next = a;
        auto o = std::make_shared<Obj>();
        o->callback = [o] { return static_cast<long>(o->payload.size()); };
        total += o->callback();
    }
    std::cout << (total < 0 ? "unreachable" : "done") << "\n";
}
