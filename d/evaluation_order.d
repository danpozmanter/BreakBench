import std.format, std.stdio;

string pair(int a, int b) { return format("%d %d", a, b); }

void main()
{
    int n = 0;
    int next() { return ++n; }
    writeln(pair(next(), next()));
}
