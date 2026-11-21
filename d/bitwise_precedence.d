import std.conv, std.stdio;

void main(string[] args)
{
    int x = args[1].to!int;
    bool even = x & 1 == 0; // BREAK!
    // CONTROL! bool even = (x & 1) == 0;
    writeln(even ? "even" : "odd");
}
