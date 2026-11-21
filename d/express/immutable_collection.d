// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    immutable int[] xs = [1, 2, 3];
    xs[0] = 9; // REJECT!
    writeln(xs.length);
}
