import std.conv, std.stdio;

class Shape
{
    int area() { return 0; }
    string describe() { return "area " ~ area().to!string; }
}

class Square : Shape
{
    override int area() { return 4; }
}

void main()
{
    writeln(new Square().describe());
}
