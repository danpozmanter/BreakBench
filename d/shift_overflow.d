import std.conv, std.stdio;

void main(string[] args)
{
    int s = args[1].to!int;
    ulong one = 1;
    writeln(one << s);
}
