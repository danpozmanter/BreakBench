var n = long.Parse(args[0]);
long seen = 0;
for (long i = 0; i < n; i++)
{
    var rec = new Rec();
    seen += rec.Data[0];
}
Console.WriteLine(seen == n ? "done" : "lost");

class Rec
{
    public byte[] Data { get; } = Enumerable.Repeat((byte)1, 4096).ToArray();
}
