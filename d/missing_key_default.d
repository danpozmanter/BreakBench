import std.stdio;

void main(string[] args)
{
    int[string] stock = ["apple": 3, "plum": 4];
    auto name = args[1];
    writeln(stock[name] + 5);
}
