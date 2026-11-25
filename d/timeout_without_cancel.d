import core.atomic, core.time;
import std.concurrency, std.stdio;

shared int balance = 100;

void charge()
{
    balance.atomicOp!"-="(30);
}

void attempt(Tid owner)
{
    receiveOnly!string();
    charge();
    owner.send(true);
}

void main()
{
    auto worker = spawn(&attempt, thisTid);
    if (!receiveTimeout(100.msecs, (bool done) {}))
    {
        worker.send("open");
        charge(); // BREAK!
        receiveOnly!bool();
    }
    writeln(balance);
}
