import std.conv, std.stdio;

void main(string[] args)
{
    auto count = args[1].to!ulong;
    // CONTROL! if (count > (1UL << 27)) { writeln("too large"); return; }
    auto size = count * 8;
    auto records = new ubyte[size];
    records[8] = 99;
    writeln("stored");
}
