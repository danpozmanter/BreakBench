// LEVEL: STD

#include <iostream>
#include <map>
#include <string>

int main() {
    std::map<std::string, int> counts;
    for (const char *w : {"a", "b", "a"}) counts[w]++;
    std::cout << "a=" << counts["a"] << " b=" << counts["b"] << "\n";
}
