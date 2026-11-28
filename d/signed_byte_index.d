import std.algorithm, std.stdio;

void main(string[] args)
{
    int[256] counts;
    foreach (c; args[1])
        counts[c]++;
    writeln(counts[128 .. $].sum);
}
