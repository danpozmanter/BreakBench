var balance = 100;
var gate = new TaskCompletionSource();

async Task Charge()
{
    await gate.Task;
    Interlocked.Add(ref balance, -30);
}

var attempt = Task.Run(Charge);
if (!attempt.Wait(TimeSpan.FromMilliseconds(100)))
{
    gate.SetResult();
    await Charge(); // BREAK!
}
await attempt;
Console.WriteLine(balance);
