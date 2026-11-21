import std.stdio;

struct Meters
{
    double v;
    Meters opBinary(string op : "+")(Meters o) const { return Meters(v + o.v); }
}

struct Seconds { double v; }

void main()
{
    auto total = Meters(2) + Meters(3);
    auto wrong = Meters(2) + Seconds(3); // BREAK!
    writeln(total.v);
}
