#include <iostream>
#include <memory>
#include <string>

struct Node {
    long value;
    std::unique_ptr<Node> next;
};

int main(int, char **argv) {
    long n = std::stol(argv[1]);
    {
        std::unique_ptr<Node> head;
        for (long i = 0; i < n; i++) head = std::make_unique<Node>(Node{i, std::move(head)});
    }
    std::cout << "done\n";
}
