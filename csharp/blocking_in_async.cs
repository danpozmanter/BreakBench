using System.Diagnostics;

static async Task Job()
{
    Thread.Sleep(500); // CONTROL! await Task.Delay(500);
}

var sw = Stopwatch.StartNew();
await Task.WhenAll(Job(), Job());
Console.WriteLine(sw.ElapsedMilliseconds < 800 ? "concurrent" : "serial");
