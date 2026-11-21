#include <iostream>
#include <string>
#include <unordered_set>

struct Point {
    int x;
    int y;
    std::string label;
    bool operator==(const Point &o) const { return x == o.x && y == o.y; }
};

// CONTROL! template <> struct std::hash<Point> { size_t operator()(const Point &p) const { return std::hash<int>()(p.x) ^ std::hash<int>()(p.y); } };

int main() {
    std::unordered_set<Point> s{{1, 2, "a"}, {1, 2, "b"}};
    std::cout << s.size() << "\n";
}
