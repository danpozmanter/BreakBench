import std.stdio;

class Rec
{
    long value;
    this(long v) { value = v; }
}

void main()
{
    auto a = new Rec(0);
    a = null;
    a = null;
    auto x = new Rec(1);
    auto y = new Rec(2);
    writeln(x.value);
}
