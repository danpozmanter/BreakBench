// LEVEL: LANGUAGE

Use(false);
try { Use(true); } catch (InvalidOperationException) { }

static void Use(bool fail)
{
    using var r = new Resource();
    if (fail) throw new InvalidOperationException("bad");
}

sealed class Resource : IDisposable
{
    public void Dispose() => Console.WriteLine("released");
}
