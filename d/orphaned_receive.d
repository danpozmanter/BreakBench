import std.concurrency, std.conv, std.stdio;

void worker(Tid owner)
{
    owner.send("x".to!long);
}

void main()
{
    spawn(&worker, thisTid);
    writeln(receiveOnly!long());
}
