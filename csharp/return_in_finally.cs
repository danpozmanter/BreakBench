static void WriteReport() => throw new IOException("disk full");

static void CloseLog() { }

static void SaveReport()
{
    try
    {
        WriteReport();
    }
    finally
    {
        CloseLog();
        return; // BREAK!
    }
}

try
{
    SaveReport();
    Console.WriteLine("saved");
}
catch (IOException)
{
    Console.WriteLine("failed");
}
