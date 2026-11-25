import std.conv, std.stdio;

class Rec
{
    ubyte[] data;
    this() { data = new ubyte[4096]; data[] = 1; }
}

Rec last;

void main(string[] args)
{
    immutable n = args[1].to!long;
    foreach (_; 0 .. n)
    {
        auto rec = new Rec;
        last = rec;
    }
    writeln("done");
}
