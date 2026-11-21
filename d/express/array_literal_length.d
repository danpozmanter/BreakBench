// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    int[4] table = [10, 20, 30, 40];
    writeln(table[3]);
    int[4] shortTable = [10, 20, 30]; // REJECT!
}
