// LEVEL: LANGUAGE

import std.stdio;

class Shape
{
    string describe() { return "shape"; }
}

class Circle : Shape
{
    override string describe() { return "circle"; }
    override string descibe() { return "circle"; } // REJECT!
}

void main()
{
    Shape s = new Circle();
    writeln(s.describe());
}
