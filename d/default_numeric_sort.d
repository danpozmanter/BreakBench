import std.algorithm, std.stdio;

void main()
{
    int[] scores = [10, 9, 1];
    scores.sort();
    writefln("%(%s %)", scores);
}
