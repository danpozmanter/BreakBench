// LEVEL: STD

import core.stdc.signal, std.stdio;

shared bool stop;

extern (C) void onTerm(int) nothrow @nogc { stop = true; }

void main()
{
    signal(SIGTERM, &onTerm);
    raise(SIGTERM);
    if (stop) writeln("cleaned up");
}
