// LEVEL: STD

import core.thread, std.process, std.stdio;

void main()
{
    auto pid = spawnProcess(["sleep", "10"]);
    Thread.sleep(100.msecs);
    kill(pid);
    writeln(wait(pid) < 0 ? "killed" : "finished");
}
