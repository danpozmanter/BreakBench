// LEVEL: STD

import core.exception, std.conv, std.stdio;

void main(string[] args)
{
    size_t n = args[1].to!size_t;
    try
    {
        auto buf = new ubyte[n];
        writeln("allocated");
    }
    catch (OutOfMemoryError)
        writeln("allocation failed");
}
