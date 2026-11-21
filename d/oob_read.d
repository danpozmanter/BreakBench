import std.conv, std.stdio;

struct Frame
{
    int[4] buf = [1, 2, 3, 4];
    int secret = 42;
}

void main(string[] args)
{
    Frame f;
    size_t idx = args[1].to!size_t;
    writeln(f.buf[idx]);
}
