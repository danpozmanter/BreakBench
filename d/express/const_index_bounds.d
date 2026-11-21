// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    int[3] table = [10, 20, 30];
    writeln(table[1]);
    writeln(table[5]); // REJECT!
}
