import std.algorithm, std.array, std.math, std.stdio;

void main()
{
    double[] xs = [5, double.nan, 3, 1, double.nan, 4, 2];
    xs.sort();
    auto finite = xs.filter!(x => !isNaN(x)).array;
    writeln(finite.isSorted ? "ordered" : "unordered");
}
