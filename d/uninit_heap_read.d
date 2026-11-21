import std.format, std.stdio;

void main()
{
    auto session = new ubyte[](64);
    session[32 .. 44] = cast(const(ubyte)[]) "SECRET-TOKEN";
    session = null;
    auto reply = new ubyte[](64);
    writefln("%(%02x%)", reply[32 .. 44]);
}
