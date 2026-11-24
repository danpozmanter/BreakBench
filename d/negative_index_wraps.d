import std.conv, std.stdio;

void main(string[] args)
{
    int[] readings = [10, 20, 30];
    auto i = args[1].to!int;
    writeln(readings[i] - readings[i - 1]); // CONTROL! if (i > 0) writeln(readings[i] - readings[i - 1]); else writeln("no previous");
}
