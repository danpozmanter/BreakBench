// LEVEL: STD

import core.thread, std.stdio;

void main()
{
    auto t = new Thread({ throw new Exception("boom"); }).start();
    try t.join(); catch (Throwable) writeln("worker crashed");
}
