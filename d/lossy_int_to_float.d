import std.conv, std.stdio;

void show(double f) { writefln("%.0f", f); }

void main(string[] args)
{
    long n = args[1].to!long;
    show(n); // CONTROL! writeln(n);
}
