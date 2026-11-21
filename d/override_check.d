import std.stdio;

class Shape
{
    string describe() { return "shape"; }
}

class Circle : Shape
{
    override string describe() { return "circle"; }
    override string descibe() { return "circle"; } // BREAK!
}

void main()
{
    Shape s = new Circle();
    writeln(s.describe());
}
