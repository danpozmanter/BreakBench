import std.conv, std.stdio;

void main(string[] args)
{
    size_t n = args[1].to!size_t;
    // CONTROL! if (n > (1UL << 30)) { writeln("too large"); return; }
    auto buf = new ubyte[](n);
    buf[n - 1] = 1;
    writeln(buf.length);
}
