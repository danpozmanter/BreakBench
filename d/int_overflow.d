import std.conv, std.stdio;

void main(string[] args)
{
    long n = args[1].to!long;
    writeln(n + 1); // CONTROL! writeln(cast(ulong) n + 1);
}
