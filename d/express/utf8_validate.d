// LEVEL: STD

import std.stdio, std.utf;

void main()
{
    immutable ubyte[] bytes = [0x61, 0xFF];
    try
    {
        validate(cast(string) bytes);
        writeln("valid");
    }
    catch (UTFException)
        writeln("invalid");
}
