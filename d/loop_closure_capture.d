import std.algorithm, std.array, std.conv, std.stdio;

void main()
{
    int delegate()[] fs;
    for (int i = 0; i < 3; i++)
    {
        fs ~= () => i;
    }
    writeln(fs.map!(f => f().to!string).join(","));
}
