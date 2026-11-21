import std.stdio;

struct Point
{
    int x, y;
    string label;
    bool opEquals(const Point o) const { return x == o.x && y == o.y; }
}

void main()
{
    bool[Point] s;
    s[Point(1, 2, "a")] = true;
    s[Point(1, 2, "b")] = true;
    writeln(s.length);
}
