using System.Threading.Channels;

static async Task<(int, Task[])> FirstAnswer()
{
    var answers = Channel.CreateUnbounded<int>();
    var workers = Enumerable.Range(0, 2).Select(_ => Task.Run(() => answers.Writer.WriteAsync(42).AsTask())).ToArray();
    return (await answers.Reader.ReadAsync(), workers);
}

var (answer, workers) = await FirstAnswer();
Console.WriteLine(answer);
await Task.WhenAll(workers);
Console.WriteLine("done");
