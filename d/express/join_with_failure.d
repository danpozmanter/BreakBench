// LEVEL: STD

import core.thread, std.stdio;

void main()
{
    auto t = new Thread({ throw new Exception("bad input"); }).start();
    try
        t.join();
    catch (Throwable e)
        writeln("worker failed: ", e.msg);
}
