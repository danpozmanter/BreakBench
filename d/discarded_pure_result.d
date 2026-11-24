import std.stdio, std.uni;

void main()
{
    string name = "ada";
    name.toUpper(); // BREAK!
    writeln(name); // CONTROL! writeln(name.toUpper());
}
