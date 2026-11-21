import std.conv, std.stdio;

void main(string[] args)
{
    int x = args[1].to!int;
    string label = "not one";
    if (x = 1) label = "one"; // BREAK!
    // CONTROL! if (x == 1) label = "one";
    writeln(label);
}
