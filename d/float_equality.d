import std.conv, std.stdio;

void main(string[] args)
{
    double x = args[1].to!double;
    double y = args[2].to!double;
    double a = x + y;
    writeln(a == 0.3 ? "equal" : "not equal");
}
