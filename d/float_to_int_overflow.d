import std.conv, std.stdio;

void main(string[] args)
{
    double x = args[1].to!double;
    long v = cast(long) x; // CONTROL! double v = x;
    writeln(v); // CONTROL! writefln("%.0f", v);
}
