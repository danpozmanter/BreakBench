// LEVEL: LANGUAGE

import std.stdio;

struct P { int x; }

void main()
{
    auto a = P(1);
    auto b = a;
    b.x = 9;
    writeln(a.x);
}
