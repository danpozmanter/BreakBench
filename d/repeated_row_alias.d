import std.algorithm, std.stdio;

void main()
{
    auto grid = new int[][](3, 3);
    grid[0][0] = 1;
    writeln(grid.map!(row => row.count(1)).sum);
}
