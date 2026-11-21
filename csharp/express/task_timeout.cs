// LEVEL: STD

var task = Task.Delay(5000);
try
{
    await task.WaitAsync(TimeSpan.FromMilliseconds(100));
    Console.WriteLine("done");
}
catch (TimeoutException)
{
    Console.WriteLine("timed out");
}
