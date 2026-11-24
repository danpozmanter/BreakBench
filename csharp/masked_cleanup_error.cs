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
    using var report = new Report(); // CONTROL! var report = new Report();
    report.Write("totals"); // CONTROL! try { report.Write("totals"); } catch { try { report.Dispose(); } catch (IOException) { } throw; } report.Dispose();
}

sealed class Report : IDisposable
{
    public void Write(string text) => throw new IOException("disk full");

    public void Dispose() => throw new IOException("close failed");
}
