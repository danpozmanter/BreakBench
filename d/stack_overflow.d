import std.conv, std.stdio;

long walk(long n)
{
    if (n == 0) return 0;
    return (walk(n - 1) * 31 + n) % 1_000_000_007;
}

void main(string[] args)
{
    writeln(walk(args[1].to!long));
}
