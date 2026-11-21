// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    int[string] counts;
    foreach (w; ["a", "b", "a"]) counts[w]++;
    writefln("a=%s b=%s", counts["a"], counts["b"]);
}
