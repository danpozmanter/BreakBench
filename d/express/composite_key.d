// LEVEL: LANGUAGE

import std.stdio, std.typecons;

void main()
{
    bool[Tuple!(int, int)] s;
    s[tuple(1, 2)] = true;
    writeln((tuple(1, 2) in s) !is null);
}
