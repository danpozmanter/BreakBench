import std.stdio;

class Rec
{
    long value;
    this(long v) { value = v; }
}

void main()
{
    auto a = new Rec(1234);
    auto b = a;
    a = null;
    auto c = new Rec(6666);
    writeln(b.value);
}
