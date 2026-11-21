// LEVEL: STD

import core.thread, core.stdc.stdlib, std.concurrency, std.stdio;

void slow(Tid owner)
{
    Thread.sleep(5.seconds);
    owner.send(1);
}

void main()
{
    spawn(&slow, thisTid);
    bool got = receiveTimeout(100.msecs, (int v) {});
    writeln(got ? "done" : "timed out");
    stdout.flush();
    exit(0);
}
