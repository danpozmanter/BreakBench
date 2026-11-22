import std.algorithm, std.array, std.conv, std.stdio;

void main(string[] args)
{
    auto xs = args[1 .. $].map!(to!long).array;
    writeln(xs.maxElement + 1);
}
