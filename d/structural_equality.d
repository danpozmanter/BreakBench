import std.stdio;

struct P { int x; int y; }

void main()
{
    auto a = P(1, 2);
    auto b = P(1, 2);
    writeln(a == b ? "equal" : "different");
}
