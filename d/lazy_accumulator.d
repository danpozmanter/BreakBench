import std.conv, std.stdio;

void main(string[] args)
{
    auto count = args[1].to!long;
    auto source = File("/dev/zero", "rb");
    long total = 0;
    foreach (i; 0 .. count)
    {
        auto message = new ubyte[4096];
        total += source.rawRead(message).length;
    }
    writeln(total);
}
