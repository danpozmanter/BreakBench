var counter = new Counter();
RunTwice(counter.Increment);
Console.WriteLine(counter.Count);

static void RunTwice(Action f)
{
    f();
    f();
}

class Counter
{
    public int Count { get; private set; }

    public void Increment() => Count++;
}
