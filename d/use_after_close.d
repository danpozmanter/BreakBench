import std.stdio;

void main()
{
    auto f = File("/tmp/bb_close.txt", "w");
    f.write("a");
    f.close();
    f.write("b"); // BREAK!
    writeln("ok");
}
