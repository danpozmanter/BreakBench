import std.stdio, std.variant;

void main()
{
    Variant v = 42;
    writeln(v.get!string.length);
}
