// LEVEL: STD

import std.conv, std.stdio;

void main(string[] args)
{
    int v = args[1].to!int;
    try
    {
        v.to!ubyte;
        writeln("fits");
    }
    catch (ConvOverflowException)
        writeln("does not fit");
}
