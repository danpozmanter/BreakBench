// LEVEL: STD

import std.concurrency, std.stdio;

void worker(Tid owner)
{
    foreach (v; 1 .. 4) owner.send(v);
}

void main()
{
    spawn(&worker, thisTid);
    int[] got;
    foreach (i; 0 .. 3) got ~= receiveOnly!int();
    writefln("%(%s %)", got);
}
