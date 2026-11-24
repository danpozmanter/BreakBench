import std.conv, std.stdio;

void main(string[] args)
{
    int[] xs = [1, 2, 3];
    long i = args[1].to!long;
    writeln(i < xs.length ? "less" : "not less"); // CONTROL! writeln(i < cast(long) xs.length ? "less" : "not less");
}
