import std.stdio;

void main()
{
    bool[int[]] seen;
    int[] key = [1, 2];
    seen[key] = true; // CONTROL! seen[key.idup] = true;
    key[0] = 9;
    foreach (e; seen.byKey)
        writeln(e in seen ? "found" : "lost");
}
