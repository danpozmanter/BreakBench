#include <cstdlib>
#include <iostream>
#include <memory>
#include <vector>

struct Node {
    std::vector<unsigned char> data = std::vector<unsigned char>(4096, 1);
    std::shared_ptr<Node> other;
};

int main(int, char **argv) {
    long n = std::atol(argv[1]);
    for (long i = 0; i < n; ++i) {
        auto parent = std::make_shared<Node>();
        auto child = std::make_shared<Node>();
        parent->other = child;
        child->other = parent;
    }
    std::cout << "done\n";
}
