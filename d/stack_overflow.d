import std.conv, std.stdio;

long walk(long n)
{
    if (n == 0) return 0;
    return (walk(n - 1) * 31 + n) % 1_000_000_007;
}

void main(string[] args)
{
    writeln(walk(args[1].to!long)); // CONTROL! long n = args[1].to!long, acc = 0; foreach (i; 1 .. n + 1) acc = (acc * 31 + i) % 1_000_000_007; writeln(acc);
}
