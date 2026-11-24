import std.conv, std.stdio;

void main(string[] args)
{
    int n = args[1].to!int; // CONTROL! int n; try { n = args[1].to!int; } catch (ConvException) { writeln("invalid"); return; }
    writeln(n + 1);
}
