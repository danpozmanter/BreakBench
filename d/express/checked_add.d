// LEVEL: STD

import core.checkedint, std.conv, std.stdio;

void main(string[] args)
{
    long n = args[1].to!long;
    bool overflow;
    adds(n, 1L, overflow);
    writeln(overflow ? "overflow" : "ok");
}
