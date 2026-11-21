// LEVEL: STD

using System.Collections.Concurrent;

var m = new ConcurrentDictionary<int, int>();
var ts = Enumerable.Range(0, 4).Select(t => new Thread(() => { for (int k = 0; k < 1000; k++) m[t * 1000 + k] = k; })).ToList();
ts.ForEach(t => t.Start());
ts.ForEach(t => t.Join());
Console.WriteLine(m.Count);
