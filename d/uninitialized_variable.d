import std.conv, std.stdio;

void main(string[] args)
{
    int n = args[1].to!int;
    int x;
    if (n > 5) x = 10;
    writeln(x);
}
