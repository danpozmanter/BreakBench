using System.Collections.Concurrent;

using var lists = new BlockingCollection<List<int>>();
using var goOn = new ManualResetEventSlim();
var worker = new Thread(() =>
{
    var received = lists.Take();
    goOn.Wait();
    Console.WriteLine(received[0]);
});
worker.Start();
var list = new List<int> { 1, 2, 3 };
lists.Add(list); // CONTROL! lists.Add(new List<int>(list));
list[0] = 99;
goOn.Set();
worker.Join();
