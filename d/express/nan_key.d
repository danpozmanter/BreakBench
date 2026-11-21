// LEVEL: LANGUAGE

import std.conv, std.stdio;

void main()
{
    double a = "nan".to!double;
    double b = "nan".to!double;
    bool[double] s;
    s[a] = true;
    writeln(b in s ? "found" : "missing");
}
