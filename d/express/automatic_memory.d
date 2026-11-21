// LEVEL: LANGUAGE

import std.stdio;

class Rec
{
    long id;
    ubyte[1016] data;
    this(long id) { this.id = id; }
}

void main()
{
    Rec last;
    foreach (i; 0 .. 4_000_000)
        last = new Rec(i);
    writeln(last.id);
}
