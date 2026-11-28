import std.conv, std.stdio;

void main(string[] args)
{
    int v = args[1].to!int;
    // CONTROL! if (v < 0 || v > 255) { writeln("out of range"); return; }
    ubyte b = v.to!ubyte;
    writeln(b);
}
