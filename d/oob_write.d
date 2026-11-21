import std.conv, std.stdio;

struct Frame
{
    int[4] buf;
    int guard = 7;
}

void main(string[] args)
{
    Frame f;
    size_t idx = args[1].to!size_t;
    f.buf[idx] = 99;
    writeln(f.guard);
}
