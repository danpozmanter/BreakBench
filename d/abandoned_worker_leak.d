import std.concurrency, std.conv, std.stdio;

void answer(Tid owner, long seed)
{
    auto buf = new long[8192];
    buf[] = seed;
    owner.send(cast(immutable) buf);
}

void main(string[] args)
{
    auto rounds = args[1].to!long;
    foreach (i; 0 .. rounds)
    {
        spawn(&answer, thisTid, i);
        spawn(&answer, thisTid, i + 1);
        auto first = receiveOnly!(immutable(long)[])();
        assert(first.length == 8192);
    }
    writeln("done");
}
