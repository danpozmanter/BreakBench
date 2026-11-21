// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    int[3] a = [1, 2, 3];
    auto b = a;
    b[0] = 9;
    writeln(a[0]);
}
