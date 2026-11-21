// LEVEL: STD

var d = new LinkedList<int>();
d.AddLast(1);
d.AddFirst(0);
d.AddLast(2);
int front = d.First!.Value; d.RemoveFirst();
int back = d.Last!.Value; d.RemoveLast();
Console.WriteLine($"{front} {back}");
