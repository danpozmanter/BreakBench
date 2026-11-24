import std.stdio, std.variant;

void main()
{
    Variant v = 42;
    writeln(v.get!string.length); // CONTROL! if (auto s = v.peek!string) writeln(s.length); else writeln("not text");
}
