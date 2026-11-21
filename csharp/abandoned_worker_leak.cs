int rounds = int.Parse(args[0]);
for (int i = 0; i < rounds; i++)
{
    long seed = i;
    var a = Task.Run(() => Enumerable.Repeat(seed, 8192).ToArray());
    var b = Task.Run(() => Enumerable.Repeat(seed + 1, 8192).ToArray());
    var first = await await Task.WhenAny(a, b);
    if (first.Length != 8192) Console.WriteLine("short");
}
Console.WriteLine("done");
