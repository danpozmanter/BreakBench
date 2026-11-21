import std.conv, std.stdio;

void main(string[] args)
{
    int x = args[1].to!int;
    bool inside = 1 < x < 3; // BREAK!
    // CONTROL! bool inside = 1 < x && x < 3;
    writeln(inside ? "inside" : "outside");
}
