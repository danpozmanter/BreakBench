// LEVEL: STD

import std.digest, std.stdio;

void main()
{
    ubyte[16] a = 7, b = 7;
    writeln(secureEqual(a[], b[]) ? "equal" : "different");
}
