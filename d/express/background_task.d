// LEVEL: STD

import core.thread, std.parallelism, std.stdio;

int slow() { Thread.sleep(50.msecs); return 7; }

void main()
{
    auto t = task!slow();
    taskPool.put(t);
    writeln("started");
    writeln(t.yieldForce);
}
