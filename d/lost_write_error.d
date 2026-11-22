import std.stdio;

void main()
{
    {
        auto f = File("/dev/full", "w");
        f.writeln("data");
    }
    writeln("saved");
}
