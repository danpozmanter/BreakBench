// LEVEL: STD

import std.conv, std.stdio;

void main(string[] args)
{
    try
    {
        args[1].to!long;
        writeln("valid");
    }
    catch (ConvException)
        writeln("invalid");
}
