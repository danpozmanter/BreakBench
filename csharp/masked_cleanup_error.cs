try
{
    Save();
}
catch (IOException error)
{
    Console.WriteLine(error.Message);
}

static void Save()
{
    using var report = new Report();
    report.Write("totals");
}

sealed class Report : IDisposable
{
    public void Write(string text) => throw new IOException("disk full");

    public void Dispose() => throw new IOException("close failed");
}
