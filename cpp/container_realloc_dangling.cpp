#include <iostream>
#include <vector>

struct Item { int val; };

Item *handles[4];

int main() {
    std::vector<Item> v{{1}};
    Item &r = v[0];
    handles[0] = &r;
    for (int i = 0; i < 1000; i++) v.push_back({i});
    std::vector<Item> w{{7}};
    handles[1] = &w[0];
    handles[0]->val = 99; // CONTROL! v[0].val = 99;
    std::cout << handles[1]->val << "\n";
}
