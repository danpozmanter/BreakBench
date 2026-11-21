// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    string name = "Ada";
    writeln(i"hello $(name)");
    writeln(i"hello $(nmae)"); // REJECT!
}
