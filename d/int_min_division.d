import std.conv, std.stdio;

void main(string[] args)
{
    long a = args[1].to!long;
    long b = args[2].to!long;
    writeln(a / b); // CONTROL! writeln((0UL - cast(ulong) a) / (0UL - cast(ulong) b));
}
