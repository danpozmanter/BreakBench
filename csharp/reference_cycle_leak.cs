int n = int.Parse(args[0]);
long total = 0;
for (int i = 0; i < n; i++)
{
    var a = new Node();
    var b = new Node();
    a.Next = b;
    b.Next = a;
    var o = new Obj();
    o.Callback = () => o.Payload.Length;
    total += o.Callback();
}
Console.WriteLine(total < 0 ? "unreachable" : "done");

class Node
{
    public Node? Next;
    public byte[] Payload = new byte[2048];
}

class Obj
{
    public byte[] Payload = new byte[2048];
    public Func<int>? Callback;
}
