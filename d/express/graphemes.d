// LEVEL: STD

import std.algorithm, std.array, std.range, std.stdio, std.uni;

void main()
{
    writeln("abcdefgh👍🏽xyz".byGrapheme.take(9).map!(g => g[].array).joiner.array);
}
