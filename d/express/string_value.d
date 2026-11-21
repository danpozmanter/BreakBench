// LEVEL: LANGUAGE

import std.stdio;

void main()
{
    string a = "abc";
    string b = a;
    b ~= "d";
    writeln(a);
}
