import std.algorithm, std.array, std.conv, std.stdio;

void main()
{
    int[] xs = [1, 2, 2, 3];
    foreach (x; xs)
    {
        if (x == 2) xs = xs.remove(xs.countUntil(x));
    }
    writeln(xs.map!(to!string).join(","));
}
