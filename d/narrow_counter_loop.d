import std.stdio;

void main()
{
    int passes = 0;
    ubyte i = 0; // BREAK!
    // CONTROL! ushort i = 0;
    while (i < 300)
    {
        passes++;
        i++;
    }
    writeln(passes);
}
