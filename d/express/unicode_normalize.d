// LEVEL: STD

import std.stdio, std.uni;

void main()
{
    writeln(normalize!NFC("é") == "é" ? "equal" : "different");
}
