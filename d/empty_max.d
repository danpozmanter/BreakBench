import std.algorithm, std.array, std.conv, std.stdio;

void main(string[] args)
{
    auto xs = args[1 .. $].map!(to!long).array;
    writeln(xs.maxElement + 1); // CONTROL! if (xs.length == 0) writeln("no readings"); else writeln(xs.maxElement + 1);
}
