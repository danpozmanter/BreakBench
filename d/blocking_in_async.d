import core.thread, std.datetime.stopwatch, std.stdio;

void main()
{
    auto sw = StopWatch(AutoStart.yes);
    auto a = new Thread({ Thread.sleep(500.msecs); });
    auto b = new Thread({ Thread.sleep(500.msecs); });
    a.start();
    b.start();
    a.join();
    b.join();
    writeln(sw.peek < 800.msecs ? "concurrent" : "serial");
}
