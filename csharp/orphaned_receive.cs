using System.Threading.Channels;

var answer = Channel.CreateUnbounded<long>();
_ = Task.Run(() => answer.Writer.TryWrite(long.Parse("x")));
Console.WriteLine(await answer.Reader.ReadAsync());
