import std.stdio;

void main()
{
    long big = 42;
    int small = cast(int) big;
    int wrong = big; // BREAK!
    writeln(small);
}
