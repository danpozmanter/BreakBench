import std.conv, std.stdio;

void main(string[] args)
{
    int v = args[1].to!int;
    ubyte b = cast(ubyte) v;
    writeln(b);
}
