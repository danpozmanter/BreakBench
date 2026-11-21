// LEVEL: STD

import std.bitmanip, std.stdio;

void main()
{
    BitArray b;
    b.length = 1024;
    b[1000] = true;
    writeln(b[1000], " ", b[999]);
}
