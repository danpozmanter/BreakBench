// LEVEL: STD

import std.algorithm, std.array, std.conv, std.math, std.stdio;

void main()
{
    auto xs = [3.0, double.nan, 1.0, 2.0];
    xs.sort!((a, b) => cmp(a, b) < 0);
    writeln(xs.map!(x => isNaN(x) ? "NaN" : x.to!string).join(" "));
}
