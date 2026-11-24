import std.algorithm, std.array, std.conv, std.stdio;

void main()
{
    int[] xs = [1, 2, 2, 3];
    foreach (x; xs) // CONTROL! xs = xs.filter!(x => x != 2).array;
    { // BREAK!
        if (x == 2) xs = xs.remove(xs.countUntil(x)); // BREAK!
    } // BREAK!
    writeln(xs.map!(to!string).join(","));
}
