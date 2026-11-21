// LEVEL: STD

import core.atomic, core.thread, std.stdio;

shared long counter;

void main()
{
    void work() { foreach (i; 0 .. 100_000) atomicOp!"+="(counter, 1); }
    auto a = new Thread(&work).start();
    auto b = new Thread(&work).start();
    a.join();
    b.join();
    writeln(atomicLoad(counter));
}
