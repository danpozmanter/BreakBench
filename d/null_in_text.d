import std.conv, std.stdio;

string findName(long id) { return id == 1 ? "alice" : null; }

void main(string[] args)
{
    auto name = findName(args[1].to!long);
    writeln(i"hello, $(name)");
}
