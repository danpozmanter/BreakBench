import std.stdio;

class Counter
{
    int count;

    void increment() { count++; }
}

void runTwice(void delegate() f)
{
    f();
    f();
}

void main()
{
    auto counter = new Counter;
    runTwice(&counter.increment);
    writeln(counter.count);
}
