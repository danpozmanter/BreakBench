import std.stdio;

long add(long a, long b) { return a + b; }

void main(string[] args)
{
    string raw = args[1];
    writeln(add(raw, 3)); // BREAK!
    writeln(raw, add(1, 2));
}
