import std.conv, std.stdio;

void main(string[] args)
{
    auto count = args[1].to!ulong;
    auto size = count * 8;
    auto records = new ubyte[size];
    records[8] = 99;
    writeln("stored");
}
