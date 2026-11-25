import core.thread : thread_joinAll;
import std.concurrency, std.stdio;

void worker(Tid owner)
{
    owner.send(42);
}

int firstAnswer()
{
    foreach (_; 0 .. 2)
        spawn(&worker, thisTid);
    return receiveOnly!int();
}

void main()
{
    writeln(firstAnswer());
    thread_joinAll();
    writeln("done");
}
