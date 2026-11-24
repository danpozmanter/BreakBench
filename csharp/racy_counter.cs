long counter = 0;
var threads = Enumerable.Range(0, 8).Select(_ => new Thread(() =>
{
    for (var i = 0; i < 1_000_000; i++) counter++;
})).ToList();
threads.ForEach(t => t.Start());
threads.ForEach(t => t.Join());
Console.WriteLine(counter);
