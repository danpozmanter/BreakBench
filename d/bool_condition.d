import std.algorithm : cmp;
import std.stdio;

void main()
{
    if (cmp("x", "x")) writeln("same"); // CONTROL! if (cmp("x", "x") == 0) writeln("same");
    else writeln("different");
}
