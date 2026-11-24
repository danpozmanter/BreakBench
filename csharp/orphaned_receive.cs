using System.Threading.Channels;

var answer = Channel.CreateUnbounded<long>();
_ = Task.Run(() => answer.Writer.TryWrite(long.Parse("x"))); // CONTROL! _ = Task.Run(() => { if (long.TryParse("x", out var n)) answer.Writer.TryWrite(n); else answer.Writer.Complete(); });
Console.WriteLine(await answer.Reader.ReadAsync()); // CONTROL! Console.WriteLine(await answer.Reader.WaitToReadAsync() && answer.Reader.TryRead(out var v) ? v.ToString() : "failed");
