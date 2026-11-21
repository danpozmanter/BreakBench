// LEVEL: LANGUAGE

import std.algorithm : sort;
import std.stdio;

struct Point { int x; int y; }

void main()
{
    auto xs = [3, 1, 2];
    xs.sort();
    auto ps = [Point(1, 2)]; ps.sort(); // REJECT!
    writeln(xs[0]);
}
