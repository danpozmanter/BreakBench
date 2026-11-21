// LEVEL: STD

using var cts = new CancellationTokenSource();
var work = Task.Run(async () =>
{
    while (!cts.Token.IsCancellationRequested)
        await Task.Delay(1);
});
await Task.Delay(20);
cts.Cancel();
await work;
Console.WriteLine("stopped");
