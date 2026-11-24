import std.stdio;

void main(string[] args)
{
    int[string] stock = ["apple": 3, "plum": 4];
    auto name = args[1];
    writeln(stock[name] + 5); // CONTROL! if (auto n = name in stock) writeln(*n + 5); else writeln("unknown");
}
