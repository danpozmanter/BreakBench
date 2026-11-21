// LEVEL: STD

import std.conv, std.stdio;

void main()
{
    double x = double.nan;
    try
    {
        x.to!long;
        writeln("fits");
    }
    catch (ConvException)
        writeln("does not fit");
}
