import std.regex, std.stdio;

void main(string[] args)
{
    writeln(matchFirst(args[1], regex("^(a+)+$")) ? "match" : "no match");
}
