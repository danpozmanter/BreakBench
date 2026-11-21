import std.stdio;

int area(int w, int h) { return w * h; }

void main()
{
    writeln(area(3)); // BREAK!
    writeln(area(3, 4));
}
