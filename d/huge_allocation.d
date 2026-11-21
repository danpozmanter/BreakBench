import std.conv, std.stdio;

void main(string[] args)
{
    size_t n = args[1].to!size_t;
    auto buf = new ubyte[](n);
    buf[n - 1] = 1;
    writeln(buf.length);
}
