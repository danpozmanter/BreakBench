// LEVEL: STD

import std.regex, std.stdio;

void main()
{
    writeln(matchFirst("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa!", regex(`^(a+)+$`)).empty ? "no match" : "match");
}
