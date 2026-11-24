import std.conv, std.stdio; // CONTROL! import std.conv, std.range, std.stdio;

void main(string[] args)
{
    string name = "a👍b";
    size_t n = args[1].to!size_t;
    writeln(name[0 .. n]); // CONTROL! writeln(name.take(n));
}
