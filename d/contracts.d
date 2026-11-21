import std.stdio;

int isqrt(int x)
in (x >= 0)
{
    int r = 0;
    while ((r + 1) * (r + 1) <= x)
        r++;
    return r;
}

void main()
{
    writeln("before");
    stdout.flush();
    writeln(isqrt(-1));
}
