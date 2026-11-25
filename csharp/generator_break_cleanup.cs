const string Lock = "/tmp/bb_scratch/reader.lock";

static IEnumerable<string> Rows()
{
    File.WriteAllText(Lock, "");
    try
    {
        yield return "alpha";
        yield return "beta";
        yield return "gamma";
    }
    finally
    {
        File.Delete(Lock);
    }
}

foreach (var line in Rows())
{
    Console.WriteLine(line);
    break;
}
