import std.stdio;

int* make()
{
    int local = 4242;
    return &local; // BREAK!
    // CONTROL! return new int(local);
}

int clobber()
{
    int[64] junk = 7;
    return junk[63];
}

void main()
{
    auto r = make();
    clobber();
    writeln(*r);
}
