import std.conv, std.stdio;

void main(string[] args)
{
    long n = args[1].to!long; // CONTROL! long n; try { n = args[1].to!long; } catch (ConvException) { writeln("invalid"); return; }
    writeln(n);
}
