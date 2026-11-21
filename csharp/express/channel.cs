// LEVEL: STD

using System.Threading.Channels;

var ch = Channel.CreateUnbounded<int>();
var producer = Task.Run(async () =>
{
    for (int v = 1; v <= 3; v++) await ch.Writer.WriteAsync(v);
    ch.Writer.Complete();
});
var got = new List<int>();
await foreach (var v in ch.Reader.ReadAllAsync()) got.Add(v);
await producer;
Console.WriteLine(string.Join(" ", got));
