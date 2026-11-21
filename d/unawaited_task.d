import core.atomic, core.thread, std.stdio;
import core.time : msecs;

shared int saved;

void main(string[] args)
{
    auto task = new Thread({
        Thread.sleep(50.msecs);
        atomicOp!"+="(saved, 1);
    }).start(); // CONTROL! }).start(); task.join();
    writeln(atomicLoad(saved));
}
