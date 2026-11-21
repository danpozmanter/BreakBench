// LEVEL: STD

import core.atomic, core.thread, std.stdio;

shared bool cancelled;

void main()
{
    auto t = new Thread({ while (!atomicLoad(cancelled)) Thread.sleep(1.msecs); }).start();
    Thread.sleep(20.msecs);
    atomicStore(cancelled, true);
    t.join();
    writeln("stopped");
}
