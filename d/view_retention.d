import std.array, std.conv, std.stdio;

void main(string[] args)
{
    int n = args[1].to!int;
    ubyte[][] heads;
    string[] prefixes;
    foreach (i; 0 .. n)
    {
        auto buf = new ubyte[](32768);
        buf[] = cast(ubyte) i;
        heads ~= buf[0 .. 16];
        string big = replicate([cast(char)('a' + i % 26)], 32768).idup;
        prefixes ~= big[0 .. 16];
    }
    writeln(heads.length);
}
