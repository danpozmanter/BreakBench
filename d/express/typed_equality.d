// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    int id = 42;
    if (id == 42) writeln("match");
    if (id == "42") writeln("text"); // REJECT!
}
