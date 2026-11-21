// LEVEL: STD

#include <deque>
#include <iostream>

int main() {
    std::deque<int> d;
    d.push_back(1);
    d.push_front(0);
    d.push_back(2);
    int front = d.front(); d.pop_front();
    int back = d.back(); d.pop_back();
    std::cout << front << " " << back << "\n";
}
