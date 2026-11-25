const string Lock = "/tmp/bb_scratch/run.lock";

static bool CheckArgs(string[] args)
{
    if (args.Contains("--version"))
    {
        Console.WriteLine("1.0");
        Environment.Exit(0); // BREAK!
        // CONTROL! return true;
    }
    return false;
}

File.WriteAllText(Lock, "");
try
{
    if (!CheckArgs(args)) Console.WriteLine("working");
}
finally
{
    File.Delete(Lock);
}
