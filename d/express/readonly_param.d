// LEVEL: LANGUAGE

import std.stdio;

size_t count(const(int)[] xs)
{
    xs[0] = 9; // REJECT!
    return xs.length;
}

void main()
{
    int[] xs = [1, 2, 3];
    writeln(count(xs));
}
