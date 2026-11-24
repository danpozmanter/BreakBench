import std.stdio;

void main()
{
    auto m = ["a": 1, "a": 2]; // CONTROL! auto m = ["a": 1, "b": 2];
    writeln(m.length);
}
