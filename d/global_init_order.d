import std.conv : to;
import std.stdio;

immutable long limit = base() * 2;
immutable long baseValue = to!long("10");

long base() { return baseValue; }

void main()
{
    writeln(limit);
}
