import std.conv, std.stdio;

void main(string[] args)
{
    size_t claimed = args[1].to!size_t;
    auto buf = new ubyte[64];
    buf[2 .. 17] = cast(const(ubyte)[]) "SECRET-KEY-0042";
    buf[0 .. 2] = cast(const(ubyte)[]) "hi";
    auto payload = buf[0 .. 2];
    // CONTROL! if (claimed > payload.length) { writeln("invalid"); return; }
    auto reply = payload[0 .. claimed];
    writeln(cast(string) reply);
}
