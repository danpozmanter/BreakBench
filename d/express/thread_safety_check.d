// LEVEL: STD

import std.concurrency, std.stdio;

void worker(Tid owner, int value)
{
    owner.send(value);
}

void unsafeWorker(int[] list) // REJECT!
{ // REJECT!
    list ~= 3; // REJECT!
} // REJECT!

void main()
{
    int[] list;
    spawn(&worker, thisTid, 1);
    spawn(&worker, thisTid, 2);
    foreach (_; 0 .. 2)
        list ~= receiveOnly!int();
    spawn(&unsafeWorker, list); // REJECT!
    writeln(list.length);
}
