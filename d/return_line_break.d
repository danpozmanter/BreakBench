import std.stdio;

long total(long a, long b)
{
    return // CONTROL! return a + b;
        a + b; // BREAK!
}

void main(string[] args)
{
    writeln(total(2, 3));
}
