// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    immutable x = 1;
    x = 2; // REJECT!
    writeln(x);
}
