var n = long.Parse(args[0]);
for (long i = 0; i < n; i++)
{
    var parent = new Node();
    var child = new Node();
    parent.Other = child;
    child.Other = parent;
}
Console.WriteLine("done");

class Node
{
    public byte[] Data { get; } = Enumerable.Repeat((byte)1, 4096).ToArray();
    public Node? Other { get; set; }
}
