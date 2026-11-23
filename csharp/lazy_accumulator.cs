var count = long.Parse(args[0]);
long total = 0;
using (var source = File.OpenRead("/dev/zero"))
{
    for (long i = 0; i < count; i++)
    {
        var message = new byte[4096];
        source.ReadExactly(message);
        total += message.Length;
    }
}
Console.WriteLine(total);
