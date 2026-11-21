// LEVEL: LANGUAGE

var task = Task.Run(int () => throw new ArgumentException("bad input"));
try
{
    Console.WriteLine(await task);
}
catch (ArgumentException e)
{
    Console.WriteLine($"worker failed: {e.Message}");
}
