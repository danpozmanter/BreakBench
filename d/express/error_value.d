// LEVEL: STD

import std.conv, std.stdio, std.sumtype;

struct ParseError {}
alias Port = SumType!(int, ParseError);

Port parsePort(string s)
{
    try return Port(s.to!int);
    catch (ConvException) return Port(ParseError());
}

void main()
{
    parsePort("x").match!(
        (int p) => writeln(p),
        (ParseError e) => writeln("error"),
    );
}
