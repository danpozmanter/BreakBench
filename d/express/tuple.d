// LEVEL: STD

import std.stdio, std.typecons;

auto pair() { return tuple(1, "a"); }

void main()
{
    auto t = pair();
    auto n = t[0], s = t[1];
    writeln(n, " ", s);
}
