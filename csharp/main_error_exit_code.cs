string text;
try
{
    text = File.ReadAllText("/nonexistent/bb.conf");
}
catch (IOException e)
{
    Console.Error.WriteLine($"config missing: {e.Message}");
    return; // BREAK!
    // CONTROL! throw;
}
Console.WriteLine(text.Length);
