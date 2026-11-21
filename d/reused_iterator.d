import std.algorithm, std.range, std.stdio;

void main()
{
    auto xs = [1, 2, 3, 4, 5, 6];
    auto evens = xs.filter!(x => x % 2 == 0);
    auto total = evens.sum;
    auto count = evens.walkLength;
    writeln(total, " ", count);
}
