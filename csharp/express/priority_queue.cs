// LEVEL: STD

var q = new PriorityQueue<int, int>();
foreach (var v in new[] { 3, 1, 2 }) q.Enqueue(v, v);
Console.WriteLine($"{q.Dequeue()} {q.Dequeue()} {q.Dequeue()}");
