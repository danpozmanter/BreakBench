var map = new Dictionary<long, long>();
var threads = Enumerable.Range(0, 8).Select(t => new Thread(() =>
{
    for (long k = 0; k < 100_000; k++) map[t * 100_000L + k] = k;
})).ToList();
threads.ForEach(t => t.Start());
threads.ForEach(t => t.Join());
Console.WriteLine(map.Count);
