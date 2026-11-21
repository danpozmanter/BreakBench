import std.conv, std.file, std.stdio;

void main(string[] args)
{
    int n = args[1].to!int;
    std.file.write("/tmp/bb_fd.txt", "x");
    foreach (_; 0 .. n)
    {
        auto f = File("/tmp/bb_fd.txt", "r");
        ubyte[1] b;
        f.rawRead(b[]);
    }
    writeln("done");
}
