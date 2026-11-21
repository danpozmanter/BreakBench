import std.stdio;

void main(string[] args)
{
    string s = "ab" ~ args[1];
    writeln(s == "abc" ? "equal" : "different");
}
