import std.concurrency, std.conv, std.stdio;

void worker(Tid owner)
{
    owner.send("x".to!long); // CONTROL! try owner.send("x".to!long); catch (ConvException) owner.send("failed");
}

void main()
{
    spawn(&worker, thisTid);
    writeln(receiveOnly!long()); // CONTROL! receive((long n) { writeln(n); }, (string s) { writeln(s); });
}
