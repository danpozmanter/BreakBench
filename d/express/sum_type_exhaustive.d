// LEVEL: STD

import std.stdio, std.sumtype;

struct Circle { double r; }
struct Square { double side; }
alias Shape = SumType!(Circle, Square);

string name(Shape s)
{
    return s.match!(
        (Circle c) => "circle",
        (Square q) => "square",
    );
}

string bad(Shape s) { return s.match!((Circle c) => "circle"); } // REJECT!

void main()
{
    writeln(name(Shape(Circle(1))));
}
