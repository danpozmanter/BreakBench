import std.stdio;

size_t count(const(int)[] xs)
{
    xs[0] = 9; // BREAK!
    return xs.length;
}

void main()
{
    int[] xs = [1, 2, 3];
    writeln(count(xs));
}
